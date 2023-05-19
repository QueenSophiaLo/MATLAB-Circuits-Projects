# Problem 1

### AC Circuit Simulation

In power-system analysis, it is common to use simulation software to understand the transient 
conditions that can easily damage equipment. This problem examines an important issue that 
frequently occur in practice.

The circuit shown below models the behavior of an AC power system providing power to a single phase 
of a building absorbing approximately 10kW of power. The building and its loads are modeled as a 
23.04 Ω resistor. At time 𝑡 = 0, a tree falls on the line coming into the building and causes a short circuit 
to ground. This situation can be modeled as a switch closing at 𝑡 = 0 as shown below.

The AC system can be modeled as a Thevenin equivalent circuit consisting of voltage source 𝑣𝑠(𝑡) in 
series with an inductor 𝐿𝑠 and a resistor 𝑅𝑠. Protection engineers use simulation programs to select the 
circuit breaker that must be placed in series with the voltage source to interrupt the extremely 
dangerous short-circuit current.
