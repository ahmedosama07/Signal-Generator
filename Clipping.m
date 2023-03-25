function [modifiedSignal,operationTime] = Clipping(signal,time)
%Clipping Summary of this function goes here
%   Function do clipping operation on the signal
    prompt = {'Upper bound: ','Lower bound: '};
    val = inputdlg(prompt);
    upperBound = str2num(val{1});
    lowerBound = str2num(val{2});
    modifiedSignal = signal;
    modifiedSignal(signal>upperBound)=upperBound;
    modifiedSignal(signal<lowerBound)=lowerBound;
    operationTime = time;
end
