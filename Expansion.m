function [modifiedSignal,operationTime] = Expansion(signal,time)
%Expansion Summary of this function goes here
%   Function expands the signal
    expansionFactor = input("Expansion factor:");
    modifiedSignal = resample(signal,expansionFactor,1);
    operationTime = linspace(time(1)*expansionFactor,time(end)*expansionFactor,length(time)*expansionFactor);
end