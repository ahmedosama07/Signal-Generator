function sinusoidal = sinusoidalSignal(samplesTime)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

amplitude = input("Amplitude: ");
frequency = input("Frequency: ");
phase = input("Phase: ");

sinusoidal = amplitude * sin(2*pi * samplesTime * frequency + phase);
end

