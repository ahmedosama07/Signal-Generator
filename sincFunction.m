function sincSignal = sincFunction(samplesTime)
%sincFunction Summary of this function goes here
%   Function creates sinc signal

amplitude = input("Amplitude: ");
centerShift = input("Center shift: ");

sincSignal = amplitude * sinc(samplesTime - centerShift);
end

