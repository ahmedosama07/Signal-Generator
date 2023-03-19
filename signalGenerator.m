function signal = signalGenerator(samplingFrequency, startTime, endTime, bPoints)
%signalGenerator Summary of this function goes here
%   The function asks user for signal type for each portion and then it
%   generates the portions forming the signal
clc;
breakpointsNumber = size(bPoints, 2);
fprintf('1. DC signal\n2. Ramp signal\n3. General order polynomial\n4. Exponential signal\n');
fprintf('5. Sinusoidal signal\n6. Sinc function\n7. Triangle pulse\n');
if (breakpointsNumber > 0)
    breakPoints = [startTime bPoints endTime];
else
    breakPoints = [startTime endTime];
end

signal = [];
i = 1;
for i = 1:breakpointsNumber+1
    samplesTime = linspace(breakPoints(i),breakPoints(i+1), (breakPoints(i+1) - breakPoints(i))*samplingFrequency);
    signalType = input("Signal between " + i + " and " + (i+1));
    portion = smallSignal(signalType, samplesTime);
    signal = [signal, portion];
end
