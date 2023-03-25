function [modifiedSignal,operationTime] = Expansion(signal,time)
%Expansion Summary of this function goes here
%   Function expands the signal
    expansionFactorval = inputdlg("Expansion factor:");
    expansionFactor = str2num(expansionFactorval{1});
    modifiedSignal = resample(signal,expansionFactor,1);
    operationTime = linspace(time(1)*expansionFactor,time(end)*expansionFactor,length(time)*expansionFactor);
end