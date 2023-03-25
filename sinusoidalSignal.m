function sinusoidal = sinusoidalSignal(samplesTime)
%sinusoidalSignal Summary of this function goes here
%   Function creates sinusoidal signal

[amplitude, frequency, phase] = inputdlg(prompt);
sinusoidal = amplitude * sin(2*pi * samplesTime * frequency + phase);
end

