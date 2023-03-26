function sinusoidal = sinusoidalSignal(samplesTime)
%sinusoidalSignal Summary of this function goes here
%   Function creates sinusoidal signal

prompt = {'Amplitude: ','Frequency: ','Phase: '};
val = inputdlg(prompt);
amplitude = str2num(val{1});
frequency = str2num(val{2});
phase = str2num(val{3});
sinusoidal = amplitude * sin(2*pi * samplesTime * frequency + phase);
end

