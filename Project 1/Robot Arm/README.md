# DC Motor for a Robot Arm
### Introduction
The below circuit model displays a DC motor which controls a robot arm:

![DCMotorCircuit](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/blob/main/Project%201/Images/DC%20Robot%20Arm%20Motor.png)

Seen in the model are the following:
  * **Ω(𝑡)**: This is the speed of the motor in rad/sec
  * **𝑣𝑎(𝑡)**: This is the input source to the motor
  * **𝑅𝑎**: This is the motor’s winding resistance
  * **𝐿𝑎**: This is the motor’s winding inductance
  * **𝐾**: This is a constant that is given in the motor data sheet (this has units of V-sec/rad)
  * **𝐾Ω(𝑡)**: This is a dependent voltage source. The value of this voltage depends on the speed of the motor.

Newton's Second Law for Rotation states that the torque acting on an object is equal to the moment of inertia of the object times its angular acceleration.
> $$\begin{array}{rll}
>  	(Moment of Inertia) * (Angular Acceleration)  & = & Net Torque\\
> 	Iα & = & τ
> \end{array}$$

Which can be represented mathematically as:
> $$J\frac{dΩ}{dt} = Ki_a - 𝛽Ω$$

Where:
  * **𝛽**: Damping ratio
  * **𝐽**: Moment of inertia
  * **𝐾**: Motor constant (This is the same one in the circuit model)

The motor you are controlling is connected to a robot arm, and it has the following parameter values:
  * **𝐿** = 0.01 𝐻
  * **𝑅** = 3.38 𝑂ℎ𝑚s
  * **𝐾** = 0.029 $𝑉s/𝑟ad$
  * **𝐽** = 2 × 10−4 𝑘 𝑚^2
  * **𝛽** = 0.5 × 10−5 $𝑁ms/𝑟ad$

The speed and position of the motor over time will be simulated.
