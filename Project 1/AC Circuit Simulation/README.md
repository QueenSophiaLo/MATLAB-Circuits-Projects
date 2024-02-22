# AC Circuit Simulation
### Introduction
In power-system analysis, it is common to use simulation software to understand the transient conditions that can easily damage equipment. This problem examines an important issue that frequently occur in practice.

The circuit shown below models the behavior of an AC power system providing power to a single phase of a building absorbing approximately 10kW of power. The building and its loads are modeled as a 23.04 Ω resistor. At time 𝑡 = 0, a tree falls on the line coming into the building and causes a short circuit to ground. This situation can be modeled as a switch closing at 𝑡 = 0 as shown below.

The AC system can be modeled as a Thevenin equivalent circuit consisting of voltage source 𝑣𝑠(𝑡) in series with an inductor 𝐿𝑠 and a resistor 𝑅𝑠. Protection engineers use simulation programs to select the circuit breaker that must be placed in series with the voltage source to interrupt the extremely dangerous short-circuit current.

a) Protection engineers often use what we call “short circuit current” to select a circuit breaker. This value is the amplitude of the steady-state current flowing once the switch closes. Determine this value. To approach this problem, you should do the following:
  a. Write the differential equation for the current once the switch closes. 
  b. Solve for the steady-state solution of the differential equation assuming 𝜙𝜙 = 0.
  c. Take the amplitude of the result

b) You are now going to write code to solve for the current numerically. To do this, please use the 
following steps:
  a. Determine an appropriate time step Δ𝑡𝑡. Do this by considering the form of the transient solution and the form of the steady-state solution. 
  b. Determine an appropriate end-time for your simulation. Your graph must show at least two complete periods of the steady-state current and at least 7𝜏𝜏
  c. Write a MATLAB script that solves for the current 𝑖𝑖𝑠𝑠(𝑡𝑡) after 𝑡𝑡 = 0. Assume that the 𝑖𝑖𝑠𝑠(0) = 0 and 𝜙𝜙 = 0.
  d. Once your code works, try several different values of 𝜙𝜙 between 0 and 180 degrees. For what approximate value of 𝜙𝜙 does the value of 𝑖𝑖𝑠𝑠(𝑡𝑡) become the largest after 𝑡𝑡 = 0? 

c) You are now going to determine the impact of 𝜙𝜙
  a. Write the differential equation for the current before the switch closes
  b. Solve for the steady-state solution of the differential equation using the value of 𝜙𝜙 that you found in part b.d.
  c. Use your result from part c.b to determine the true initial condition 𝑖𝑠(0). For example, if you found that 𝑖𝑖𝑠𝑠(𝑡𝑡) = 10 cos(2𝜋𝜋60𝑡𝑡 + 30∘) in part c.b, 𝑖𝑠(0) = 10 cos(30∘).
  d. Rerun your simulation from part b with 𝜙𝜙 and your new 𝑖𝑠(0). This question is asking you to rerun the simulation for the time after the switch closes.
  e. What is the peak current now? Please note that it should be higher than it was in part b. What is the peak value of the current during the transient period now? 
