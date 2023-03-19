function ramp = rampSignal(samplesTime)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

slope = input("Slope: ");
intercept = input("Intercept: ");
ramp = slope*samplesTime + intercept;
end

