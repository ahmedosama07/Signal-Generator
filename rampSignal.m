function ramp = rampSignal(samplesTime)
%rampSignal Summary of this function goes here
%   Function creates a ramp signal


prompt = {'Slope: ','Intercept: '};
val = inputdlg(prompt);
slope = str2num(val{1});
intercept = str2num(val{2});
ramp = slope*samplesTime + intercept;
end

