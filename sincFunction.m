function sincSignal = sincFunction(samplesTime)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

amplitude = input("Amplitude: ");
centerShift = input("Center shift: ");

sincSignal = amplitude * sinc(samplesTime - centerShift);
end

