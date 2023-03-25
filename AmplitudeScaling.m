function [modifiedSignal,operationTime] = AmplitudeScaling(signal,time)
%AmplitudeScaling Summary of this function goes here
%   Function scales the amplitude of a signal
scaleValue = input("Scale value:");
modifiedSignal = signal*scaleValue;
operationTime = time;
end