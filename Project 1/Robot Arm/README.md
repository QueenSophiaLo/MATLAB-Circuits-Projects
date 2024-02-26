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

Where:
 * **τ** (Torque Generation) In a DC motor, torque is generated when current flows through the coils placed in a magnetic field, resulting in a force that drives the rotation of the motor shaft. This torque is directly proportional to the current passing through the motor, and it is what drives the movement of the robot arm.
 * **$I$** (The Moment of Inertia) For a robot arm, the moment of inertia depends on the distribution of mass around the axis of rotation. Generally, the larger the moment of inertia, the more torque is required to accelerate or decelerate the arm.
 * **α** (Angular Accelaration) Represents how quickly the rotational velocity of the motor changes. It is influenced by both the applied torque and the moment of inertia. The greater the torque applied, or the smaller the moment of inertia, the faster the angular acceleration.

Newton's Second Law for Rotation can also be represented mathematically as:
> $$J\frac{dΩ}{dt} = Ki_a - 𝛽Ω$$

Where:
  * **𝛽**: Damping ratio
  * **𝐽**: Moment of inertia
  * **𝐾**: Motor constant (This is the same one in the circuit model)

The motor being controlled is connected to a robot arm, and has the following parameter values:
  * **𝐿** = 0.01 𝐻
  * **𝑅** = 3.38 𝑂ℎ𝑚s
  * **𝐾** = 0.029 $𝑉s/𝑟ad$
  * **𝐽** = 2 × 10−4 𝑘 𝑚^2
  * **𝛽** = 0.5 × 10−5 $𝑁ms/𝑟ad$

The speed and position of the motor over time will be simulated.
