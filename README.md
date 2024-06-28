This project, built on Verilog and Xilinx Vivado platform, is a led chaser module. Let's suppose we want that two leds should chase the next group of two leds based on a simple counter. The leds to be glown among a set
of 8 leds are fed as initialstate by turning on the dip switches on fpga tariner board. The basic logic defined is that the bits are set as 1 for the leds to be glown and at every positive edge of the clock the set bits 
are left shifted by 1. This shifting idea accounts for the chasing nature of the led. The chasing of led will trigger only when reset becomes 0.

The RTL schematic for the circuit is shown below:

![Screenshot 2024-06-28 235318](https://github.com/Prats15git-Digital/Led-Chaser/assets/173728218/126efc17-036f-411a-904d-89509773c506)


The waveform after behavioral simulation of the testbench code is shown below :

![Screenshot 2024-06-28 235443](https://github.com/Prats15git-Digital/Led-Chaser/assets/173728218/fa437e3d-c06e-4adc-baa8-af759aa4b6fc)
