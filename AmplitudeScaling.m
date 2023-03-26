function [modifiedSignal,operationTime] = AmplitudeScaling(signal,time)
%AmplitudeScaling Summary of this function goes here
%   Function scales the amplitude of a signal

val = inputdlg("Scale value:");
scaleValue = str2num(val{1});
modifiedSignal = signal*scaleValue;
operationTime = time;
end