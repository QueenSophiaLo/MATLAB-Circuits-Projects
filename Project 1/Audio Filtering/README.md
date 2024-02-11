For this problem, you must also download the file named “sampleaudio.mat.” This file contains some 
corrupted digital audio. A 60Hz “hum” has somehow corrupted the file. You must remove it. 
To start this problem, you must download the file “sampleaudio.mat” and place it in your working 
directory. This directory should be the same one where you are writing your scripts. You can load this 
file with the following command:
>> load(‘sampleaudio.mat’);
Once you run this code, you will have the following two variables loaded into your workspace:
• x: This is a vector containing the audio file data. 
• Fs: This is the sampling frequency in Hz. 1/Fs is the amount of time that passes between each 
point in the audio file. 
To listen to the sound, use the following command:
>> sound(x,Fs);
You will hear the 60Hz distortion. We will now remove it. 
a) Since most audio signals are above 60Hz, we will attempt to clean the signal using a “high pass” 
digital filter. To create this digital filter, we are going to make a digital equivalent to the 
following circuit. The voltage source 𝑥𝑥(𝑡𝑡) would be the audio source, and the voltage 𝑦𝑦(𝑡𝑡)
would be the filtered audio. 
Write the differential equation that solves for the voltage 𝑦𝑦(𝑡𝑡) across the resistor. Your 
equation should be in terms of 𝑅𝑅 and 𝐶𝐶. Hint: Write the voltage across the capacitor in terms of 
the source voltage 𝑥𝑥(𝑡𝑡) and the resistor voltage 𝑦𝑦(𝑡𝑡). Then recall that 𝑦𝑦(𝑡𝑡) = 𝑖𝑖(𝑡𝑡)𝑅𝑅. Your final 
differential equation will include both 𝑑𝑑𝑑𝑑/𝑑𝑑𝑑𝑑 and 𝑑𝑑𝑑𝑑/𝑑𝑑𝑑𝑑.
b) Convert the differential equation from part a into an equivalent discrete-time equation. Explain 
your process. To write the discrete-time equation, you will need to derive it. You cannot simply 
pattern-match in this case because of the 𝑑𝑑𝑥𝑥/𝑑𝑑𝑑𝑑. The notes from 9/23 should help you to 
understand how to develop the discrete-time equation.
c) Write a MATLAB script that filters the audio signal x. Using what you are given about this 
problem, choose a reasonable value for Δ𝑡𝑡 and explain. Use 𝑅𝑅 = 1Ω and 𝐶𝐶 = 265.26𝜇𝜇𝜇𝜇
d) Play 𝑦𝑦 using the command sound(y,Fs). You should be able to hear a clear sentence. Please 
provide this sentence. 
e) Using subplot, show the input x(t) and the output y(t). It should be clear that this is a large 
signal that has been removed. Make sure to properly label the axes in your plots. 
