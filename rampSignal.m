function ramp = rampSignal(samplesTime)
%rampSignal Summary of this function goes here
%   Function creates a ramp signal


prompt = {'Slope: ','Intercept: '};
[slope, intercept] = inputdlg(prompt);
ramp = slope*samplesTime + intercept;
end

