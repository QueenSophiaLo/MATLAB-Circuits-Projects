% extracting file
fileID = fopen('problem4.bin', 'r');
data = fread(fileID, 'single').';
fclose(fileID);

for n = 2 : 2 : length(data)
    x(n/2) = data(n-1) + data(n)*j;
end

f = 50 * 10^3;
fsamp = 2.205*10^6;
delta_t_4 = 1/fsamp;
t_f = (length(x)-1)*delta_t_4;

% time array with first element being 0 and last element being t_f
% each sucessive elements have a common difference of delta t
t = 0 : delta_t_4 : t_f; 

x_3 = exp(-2*pi*j*f*t); % cancel out original multiplication done on output

x_out = x_3 .* x;   % remove exp function

x_imag = imag(x_out); % imaginary part of output signal
x_real = real(x_out); % real part of output signal

sound(downsample(x_imag,100),fsamp/100) % imaginary part = Dark Side
sound(downsample(x_real,100),fsamp/100); % real part = Light side
