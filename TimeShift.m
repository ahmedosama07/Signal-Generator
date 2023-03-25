function [modifiedSignal,operationTime] = TimeShift(signal,time)
%TimeShift Summary of this function goes here
%   Function shifts the signal in time
    shiftValue = inputdlg("Shift value:");
    modifiedSignal = signal;
    operationTime = time + shiftValue;
end
