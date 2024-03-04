clear;
clc;

% problem 1c

R = 0.1;        % Resistance
L = 0.0045;     % Inductance
tau = L/R;      % = 0.045
delta_t_1 = 0.00016;    % time step
phi = deg2rad(0);       % angle

t = 0 : delta_t_1 : 7*tau;
% generates an array with first element being 0 and last element being 7Tau
% each sucessive elements have a common difference of delta t

x = (480*sqrt(2)*cos(2*pi*60*t-phi))/R;   % [Vs(t) / R]
y = zeros(size(t));     % creates a vector of zeros in the size of t

a = delta_t_1/tau;
b = 1 - a;
    
for n = 1:1:length(t)-1
    if n == 1 % set initial condition
        y(1) = 3.1562; 
    end
        y(n+1) = (a*x(n)+b*y(n));
end

figure(1);
plot(t,y)
title('Steady State Current')
xlabel('Time in Seconds')
ylabel('Current in Amps')

% steady state current before the switch closes
c = (23.14/L) + j*120*pi;
B_mag = (480*sqrt(2)/L)/abs(c);
B_angle = 88 - rad2deg(angle(c));
I_s_0 = B_mag * cos(deg2rad(-83.8070));
