function [modifiedSignal,operationTime] = FirstDerivative(signal,time)
%FirstDerivative Summary of this function goes here
%   Function takes the first derivative of the signal
modifiedSignal = (length(time)/(abs(time(1)-time(end))))*diff(signal);
operationTime = time(1:end-1);
end
