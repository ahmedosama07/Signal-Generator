function sinusoidal = sinusoidalSignal(samplesTime)
%sinusoidalSignal Summary of this function goes here
%   Function creates sinusoidal signal

amplitude = input("Amplitude: ");
frequency = input("Frequency: ");
phase = input("Phase: ");

sinusoidal = amplitude * sin(2*pi * samplesTime * frequency + phase);
end

