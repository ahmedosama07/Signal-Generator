function [modifiedSignal,operationTime] = TimeShift(signal,time)
%TimeShift Summary of this function goes here
%   Function shifts the signal in time
    val = inputdlg("Shift value:");
    shiftValue = str2num(val{1});
    modifiedSignal = signal;
    operationTime = time + shiftValue;
end
