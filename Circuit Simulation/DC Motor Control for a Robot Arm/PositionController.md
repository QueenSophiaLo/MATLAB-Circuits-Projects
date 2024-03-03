# Providing a Position Controller for the DC Motor
### Description
 Now, you are going to provide a position controller for the DC motor. In this case, we want 
to control the angle of the machine. This means we need to add one more differential 
equation from physics to relate the angle of the rotor to the speed of the rotor. This 
differential equation is:
Ω = 𝑑𝑑𝑑𝑑
𝑑𝑑𝑑𝑑
Add this differential equation to your previous code and modify it. Include subplots with 
𝑖𝑖𝑎𝑎(𝑡𝑡), Ω(𝑡𝑡), and 𝜃𝜃(𝑡𝑡). 
f) Position controller: We want to design a control system that forces the rotor to spin from 
𝜃𝜃 = 0 to 𝜃𝜃 = 𝜋𝜋/4 radians. Please note that I am using radians here since the motor speed 
is measured in radians per second. 
g) To create a position controller, we need to add a little feedback to our system. To make this 
happen, we want the voltage applied to the motor to depend upon the difference between 
the desired angle and the actual angle. We write this like so:
𝑣𝑣𝑎𝑎(𝑡𝑡) = 𝐾𝐾𝑝𝑝𝑝𝑝(𝜃𝜃𝑟𝑟𝑟𝑟𝑟𝑟 − 𝜃𝜃(𝑡𝑡))
In this equation:
• 𝜃𝜃𝑟𝑟𝑟𝑟𝑟𝑟: The desired angle, which is 𝜋𝜋/4
• 𝜃𝜃(𝑡𝑡): The actual angle at time 𝑡𝑡.
• 𝐾𝐾𝑝𝑝𝑝𝑝: An adjustment factor
In this case, modify your code to do the following:
• Set 𝐾𝐾𝑝𝑝𝑝𝑝 = 1 and 𝜃𝜃𝑟𝑟𝑟𝑟𝑟𝑟 = 1
• Modify your code so that 𝑣𝑣𝑎𝑎(𝑡𝑡) is computed at each time step using 𝜃𝜃(𝑡𝑡). 
Assume you want 𝜃𝜃𝑟𝑟𝑟𝑟𝑟𝑟 = 45 degrees (or 𝜋𝜋/4 radians). Initially, 𝜃𝜃(0) = 0 degrees. Start 
with 𝐾𝐾𝑝𝑝𝑝𝑝 = 1. At each time step, update the voltage 𝑣𝑣𝑎𝑎(𝑡𝑡) using the equation above. 
Create the appropriate code and generate a plot that shows 𝜃𝜃(𝑡𝑡) for 50 seconds. Make sure 
your 𝑦𝑦 axis has units of degrees rather than radians. 
Please note that the code you are creating here is what would be implemented inside of a 
microcontroller. The microcontroller would sense the angle of the rotor and provide an 
updated voltage to the motor using this approach.
h) The plot for 𝜃𝜃(𝑡𝑡) should appear to be very underdamped. The result shows that the rotor 
angle will fluctuate around its final angle, which is a situation that can cause extreme 
mechanical fatigue in a real system. Think how you can fix this by changing 𝐾𝐾𝑝𝑝𝑝𝑝. Should you 
use a smaller or larger 𝐾𝐾𝑝𝑝𝑝𝑝? Experiment and find a good choice that produces an 
overdamped result. Explain why a smaller or larger 𝐾𝐾𝑝𝑝𝑝𝑝 makes intuitive sense. (Note that 
by smaller, I mean fractional. Do not chose a value for 𝐾𝐾𝑝𝑝𝑝𝑝 < 0). To answer this, you might 
want to examine different signals such as 𝜃𝜃𝑟𝑟𝑟𝑟𝑟𝑟 − 𝜃𝜃(𝑡𝑡). 
### Differential Equation

### Creating the Postition Controller
