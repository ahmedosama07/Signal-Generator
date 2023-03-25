function sincSignal = sincFunction(samplesTime)
%sincFunction Summary of this function goes here
%   Function creates sinc signal

prompt = {'Amplitude: ','Center shift: '};
val = inputdlg(prompt);
amplitude = str2num(val{1});
centerShift = str2num(val{2});
sincSignal = amplitude * sinc(samplesTime - centerShift);
end

