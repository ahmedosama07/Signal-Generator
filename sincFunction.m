function sincSignal = sincFunction(samplesTime)
%sincFunction Summary of this function goes here
%   Function creates sinc signal

prompt = {'Amplitude: ','Center shift: '};
[amplitude, centerShift] = inputdlg(prompt);
sincSignal = amplitude * sinc(samplesTime - centerShift);
end

