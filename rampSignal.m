function ramp = rampSignal(samplesTime)
%rampSignal Summary of this function goes here
%   Function creates a ramp signal

slope = input("Slope: ");
intercept = input("Intercept: ");
ramp = slope*samplesTime + intercept;
end

