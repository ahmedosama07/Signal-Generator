function triangle = trianglePulse(samplesTime)
%trianglePulse Summary of this function goes here
%   Function creates triangular pulse
amplitude = input("Amplitude: ");
centerShift = input("Center shift: ");
width = input("Width: ");

%triangle = amplitude * triangularPulse(breakPoint1,centerShift,samplesTime);
triangle = amplitude * tripuls(samplesTime - centerShift, width);
end

