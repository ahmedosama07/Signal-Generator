function [modifiedSignal,operationTime] = TimeReversal(signal,time)
%TimeReversal Summary of this function goes here
%   Function reverses the signal in time
    modifiedSignal = signal;
    operationTime = -1 .* time;
end
