#![no_main]
#![no_std]

#[allow(unused)]
use panic_halt;

use stm32f0xx_hal as hal;

use cortex_m_rt::entry;

use crate::hal::{delay::Delay, prelude::*, stm32};

use cortex_m::peripheral::Peripherals;

use rotary_encoder_hal::{Direction, Rotary};

use embedded_hal::digital::v2::OutputPin;

struct ShiftReg<Ser: OutputPin, Shift: OutputPin, Store: OutputPin>{
    ser: Ser,
    shift: Shift,
    store: Store,
}

impl<Ser: OutputPin, Shift: OutputPin, Store: OutputPin> ShiftReg<Ser, Shift, Store> {
    fn new(ser: Ser, shift: Shift, store: Store) -> ShiftReg<Ser, Shift, Store> {
        ShiftReg {
            ser, shift, store
        }
    }

    fn fill(&mut self, items: impl IntoIterator<Item=bool>) {
        self.store.set_low().ok();
        for item in items {
            self.shift.set_low().ok();
            if item {
                self.ser.set_high().ok();
            } else {
                self.ser.set_low().ok();
            }
            self.shift.set_high().ok();
        }
        self.store.set_high().ok();
    }
}


#[entry]
fn main() -> ! {
    if let (Some(mut p), Some(cp)) = (stm32::Peripherals::take(), Peripherals::take()) {
        let (mut pwm, mut delay, mut leds, mut rot) = cortex_m::interrupt::free(|cs| {
            // Configure clock to 8 MHz (i.e. the default) and freeze it
            let mut rcc = p.RCC.configure().sysclk(8.mhz()).freeze(&mut p.FLASH);

            // Obtain resources from GPIO port A
            let gpioa = p.GPIOA.split(&mut rcc);

            let pwm = gpioa.pa7.into_alternate_af1(cs);

            // Shift Reg
            let ser = gpioa.pa0.into_push_pull_output(cs);
            let store = gpioa.pa1.into_push_pull_output(cs);
            let shift = gpioa.pa2.into_push_pull_output(cs);

            let leds = ShiftReg::new(ser, shift, store);

            // Get delay provider
            let delay = Delay::new(cp.SYST, &rcc);

            // Rotary Encoder
            let rot_a = gpioa.pa5.into_pull_down_input(cs);
            let rot_b = gpioa.pa6.into_pull_down_input(cs);

            let rot = Rotary::new(rot_a, rot_b);

            (pwm, delay, leds, rot)
        });

        let mut cnt: u16 = 0;

        loop {
            match rot.update().unwrap() {
                Direction::Clockwise => {
                    cnt += 1;
                }
                Direction::CounterClockwise => {
                    cnt -= 1;
                }
                Direction::None => { delay.delay_ms(1_u8) }
            }

            let v = cnt/4;
            let render = (0..8).into_iter().map(|i| ((v+1)/2) >= i+1).rev();
            leds.fill(render);
        }
    }

    loop {
        continue;
    }
}

