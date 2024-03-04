# Filtering a Signal for Control (TODO: FINISHME!!!)
### Introduction
Solar panels are connected to the grid through a power-electronic inverter that creates a sinusoidal 
current. The figure below shows an example system:

![Example System Grid](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/blob/main/Images/Solar%20Panel%20Example%20System.jpg)

A current sensor measures the current 𝑖𝐿(𝑡) and 
converts it to an output voltage 𝑣𝑆(𝑡). An example of the voltage 𝑣𝑆(𝑡) is shown below. This signal 
has the form

$$𝑣_𝑆(𝑡) = 2 cos(2𝜋60𝑡) + 𝑥(𝑡)$$

The triangular signal 𝑥(𝑡) results from the action of the switches inside the inverter

![Example Voltage for System Grid 𝑣𝑆(𝑡) = 2 cos(2𝜋60𝑡) + 𝑥(𝑡)](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/blob/main/Images/Eaxmple%20Voltage%20for%20Solar%20Panel%20Grid%20System.PNG)

### Determine the Fourier Transform

### Designing the Filter
