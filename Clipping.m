function [modifiedSignal,operationTime] = Clipping(signal,time)
%Clipping Summary of this function goes here
%   Function do clipping operation on the signal
upperBound = input("Upper bound:");
lowerBound = input("Lower bound:");
modifiedSignal = signal;
modifiedSignal(signal>upperBound)=upperBound;
modifiedSignal(signal<lowerBound)=lowerBound;
operationTime = time;
end
