import Glibc

// Get the Pin where the LED will be attached to
let gpios = SwiftyGPIO.GPIOs(for: .RaspberryPi3)
guard let ledGPIO = gpios[.P4] else {
    fatalError(“It has not been possible to initialised the LED GPIO pin”)
}

// Set the GPIO to output
ledGPIO.direction = .OUT

// Turn on and off the led few times
ledGPIO.value = 1
sleep(1)
ledGPIO.value = 0
sleep(1)
ledGPIO.value = 1
sleep(1)
ledGPIO.value = 0
