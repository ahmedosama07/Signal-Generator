function triangle = trianglePulse(samplesTime)
%trianglePulse Summary of this function goes here
%   Function creates triangular pulse

prompt = {'Amplitude: ', 'Center shift: ', 'Width: '};
[amplitude, centerShift, width] = inputdlg(prompt);
%triangle = amplitude * triangularPulse(breakPoint1,centerShift,samplesTime);
triangle = amplitude * tripuls(samplesTime - centerShift, width);
end

