function triangle = trianglePulse(samplesTime)
%trianglePulse Summary of this function goes here
%   Function creates triangular pulse

prompt = {'Amplitude: ', 'Center shift: ', 'Width: '};
val = inputdlg(prompt);
amplitude = str2num(val{1});
centerShift = str2num(val{2});
width = str2num(val{3});
%triangle = amplitude * triangularPulse(breakPoint1,centerShift,samplesTime);
triangle = amplitude * tripuls(samplesTime - centerShift, width);
end

