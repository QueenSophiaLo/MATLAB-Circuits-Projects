# Audio Filtering
### Introduction
`sampleaudio.mat` is a file that contains corrupted digital audio. A 60Hz “hum” has somehow corrupted the file and must be removed.

### Setup
To start this problem, download the file “sampleaudio.mat” and place it in your working 
directory. This directory should be the same one where you are writing your scripts. You can load this file with the following command:

`>> load(‘sampleaudio.mat’);`

Once you run this code, you will have the following two variables loaded into your workspace:
  * **x** : This is a vector containing the audio file data. 
  * **Fs** : This is the sampling frequency in Hz. $\frac{1}{Fs}\$ is the amount of time that passes between each point in the audio file. 

To listen to the sound, use the following command:

`>> sound(x,Fs);`

You will hear the 60Hz distortion. We will now remove it.

Since most audio signals are above 60Hz, we will attempt to clean the signal using a “high pass” digital filter. To create this digital filter, we are going to make a digital quivalent to the following circuit. The voltage source 𝑥(𝑡) would be the audio source, and the voltage 𝑦(𝑡) would be the filtered audio.

![AudioFilterDigitalCircuit](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/blob/main/Project%201/Images/AudioFilterEquivilentDigitalCircuit.PNG)

### Writing the Differential Equation
Write the differential equation that solves for the voltage 𝑦(𝑡) across the resistor in terms of 𝑅 and 𝐶. Hint: Write the voltage across the capacitor in terms of the source voltage 𝑥(𝑡) and the resistor voltage 𝑦(𝑡). Recall that $𝑦(𝑡) = 𝑖(𝑡)𝑅$. Your final differential equation will include both $\frac{dx}{dt}\$ and $\frac{dy}{dt}\$.

> Voltage across the capacitor is defined by the following equation $V_{in} - V_{out} = 0$, which can also be written as $V_{in} = V_{out}$ .
>
> The current running across the output resistor can be solved by the following;
> $$I(t) = C\frac{dV_c}{dt}\ = C\frac{d}{dt}\ (V_{in} - V_{out}) = C(\frac{dV_{in}}{dt}\ - \frac{dV_{out}}{dt}\)$$
>
> Using Ohm's Law, we know that $Voltage = Resistance * Current$. We can extrapolate this equation to solve for voltage across the resistor. Using the calculated differential equations above for current, the final equation results in the following;
> $$V_{out} = RC(\frac{dV_{in}}{dt}\ - \frac{dV_{out}}{dt}\)$$

### Discretization
Convert the differential equation into an equivalent discrete-time equation. To write the discrete-time equation, you will need to derive it. You cannot simply pattern-match in this case because of the $\frac{dx}{dt}\$.

> Taking the equation $V_{out} = RC(\frac{dV_{in}}{dt}\ - \frac{dV_{out}}{dt}\)$, first simplify the variables for readability.
> $$x = V_{in}$$
> $$y = V_{out}$$
>
> Now, apply approximations for both differential equations $x$ and $y$.
> $$\frac{dx}{dt}\ \approx\ \frac{x(n+1) - x(n)}{Δt}\$$
> $$\frac{dy}{dt}\ \approx\ \frac{y(n+1) - y(n)}{Δt}\$$
>
> The differential equation now becomes;
> $$y(n) = RC(\frac{x(n+1) - x(n)}{Δt}\ - \frac{y(n+1) - y(n)}{Δt}\)$$
>
> Rearranging the above equation results in the following discretized equation;
> $$y(n+1) = \frac{RC}{RC + Δt}\[y(n) + x(n+1) - x(n)]$$

### The following is a MATLAB script that filters the audio signal x
Δ𝑡 was chosen to be equal to $\frac{1}{Fs}\$ so that the sampling frequency data points can be considered in the output 𝑦(𝑡).

```
% 2c - removing unwanted sound
load("sampleaudio.mat")

delta_t_2 = 1/Fs;     % the amount of time that passes between each point in the audio file
                      % where Fs is the sampling frequency in Hz
y = zeros(size(x));    % where x  is a vector containing the audio file data

R = 1;                % 𝑅 = 1Ω
C = 265.25 * 10^-6;   % 𝐶 = 265.26𝜇
tau = R*C;
a = tau /(tau + delta_t_2);
t = 0 : 1 : length(x)-1;

for n = 1 : 1 : length(x)-1
	if n == 1
    	y(1) = x(1);
	end
	y(n+1) = a*y(n) + a*(x(n+1) - x(n));
end

% 2d playing the sound
% If you only knew the power of the Dark Side
sound(y,Fs);

% 2e plotting voltages
subplot(2,1,1);
plot(t,x)
```

Play 𝑦 using the command `sound(y,Fs)`. You should be able to hear a clear sentence.

![Sentence](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/blob/main/Project%201/Images/IfOnlyYouKnewThePowerOfTheDarkSideQuote.PNG)

When comparing the two subplots diaplaying input 𝑥(𝑡) and output 𝑦(𝑡) signals, it is clear a large signal has been removed. From these graphs, it is evident the high pass filter has worked.

![AudioFilteringSubplots](https://github.com/QueenSophiaLo/MATLAB-Circuits-Projects/blob/main/Project%201/Images/AudioFilteringInputOutputGraphs.PNG)

