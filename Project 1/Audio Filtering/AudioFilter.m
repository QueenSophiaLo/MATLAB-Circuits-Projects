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
