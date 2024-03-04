# A PWM Motor Drive (TODO: FINISHEME!!!)
### Introduction
In the previous problem - [DC Motor Control for a Robot Arm](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/tree/main/Circuit%20Simulation/DC%20Motor%20Control%20for%20a%20Robot%20Arm), a model for the DC motor was shown.
The circuit model for that problem is displayed below. Note that the model includes a speed-dependent voltage source.

![DCMotorCircuit](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/blob/main/Images/DC%20Robot%20Arm%20Motor.png)

Seen in the model are the following:
  * **Ω(𝑡)**: This is the speed of the motor in rad/sec
  * **𝑣𝑎(𝑡)**: This is the input source to the motor
  * **𝑅𝑎**: This is the motor’s winding resistance
  * **𝐿𝑎**: This is the motor’s winding inductance
  * **𝐾**: This is a constant that is given in the motor data sheet (this has units of V-sec/rad)
  * **𝐾Ω(𝑡)**: This is a dependent voltage source. The value of this voltage depends on the speed of the motor.

The mechanical component of the motor is represented by Newton’s Second Law for rotation. Newton's Second Law for Rotation states that the torque acting on an object is equal to the moment of inertia of the object times its angular acceleration.
> $$\begin{array}{rll}
>  	(Moment of Inertia) * (Angular Acceleration)  & = & Net Torque\\
> 	Iα & = & τ
> \end{array}$$

Newton's Second Law for Rotation can also be represented mathematically as:
> $$J\frac{dΩ}{dt} = Ki_a - 𝛽Ω$$

Where:
  * **𝛽**: Damping ratio
  * **𝐽**: Moment of inertia
  * **𝐾**: Motor constant (This is the same one in the circuit model)

The motor being controlled has the following parameter values:
  * **𝐿** = 0.01 𝐻
  * **𝑅** = 3.38 𝑂ℎ𝑚s
  * **𝐾** = 0.029 $𝑉s/𝑟ad$
  * **𝐽** = 2 × 10−4 𝑘 𝑚^2
  * **𝛽** = 0.5 × 10−5 $𝑁ms/𝑟ad$

The motor is driven by the pulse width modulated (PWM) signal shown below:

(TODO: ADD IMAGE)

This waveform is periodic with a period 𝑇, a peak value of 12, a minimum value of 0, and a duty ratio D. 
Please note that the duty ratio can vary but is a fraction between 0 and 1. 

### Finding the Electrical Differential Equation

### Creating the Transfer Function

### Determine the Complex Fourier Series Coefficients

### Simulating the Motor Response

