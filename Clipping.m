function [modifiedSignal,operationTime] = Clipping(signal,time)
%Clipping Summary of this function goes here
%   Function do clipping operation on the signal
    prompt = {'Upper bound: ','Lower bound: '};
    [upperBound, lowerBound] = inputdlg(prompt);
    modifiedSignal = signal;
    modifiedSignal(signal>upperBound)=upperBound;
    modifiedSignal(signal<lowerBound)=lowerBound;
    operationTime = time;
end
