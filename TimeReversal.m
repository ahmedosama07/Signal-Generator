function [modifiedSignal,operationTime] = TimeReversal(signal,time)
%TimeReversal Summary of this function goes here
%   Function reverses the signal in time
    modifiedSignal = signal(end:-1:1);
    operationTime = time;
end
