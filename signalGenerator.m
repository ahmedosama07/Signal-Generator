function signal = signalGenerator(samplingFrequency, startTime, endTime, bPoints, breakpointsNumber)
%signalGenerator Summary of this function goes here
%   The function asks user for signal type for each portion and then it
%   generates the portions forming the signal
clc;
fprintf('1. DC signal\n2. Ramp signal\n3. General order polynomial\n4. Exponential signal\n');
fprintf('5. Sinusoidal signal\n6. Sinc function\n7. Triangle pulse\n');
if (breakpointsNumber > 0)
    breakPoints = [startTime bPoints endTime];
else
    breakPoints = [startTime endTime];
end

signal = [];
for i = 1:breakpointsNumber+1
    samplesTime = linspace(breakPoints(i),breakPoints(i+1), (breakPoints(i+1) - breakPoints(i))*samplingFrequency);
    prompt = {"Signal between " + breakPoints(i) + " and " + breakPoints(i+1) + ": ";};
    formats = struct('type', {}, 'style', {}, 'items', {}, 'format', {}, 'limits', {}, 'size', {});
    formats(1,1).type   = 'list';
    formats(1,1).style = 'popupmenu';
    formats(1,1).items  = {'1.DC signal','2.Ramp signal', '3.General order polynomial', '4.Exponential signal',...
        '5.Sinusoidal signal', '6.Sinc function', '7.Triangle pulse'};
    
    value = inputsdlg(prompt, 'Signal', formats);
    %value = inputdlg("Signal between " + breakPoints(i) + " and " + breakPoints(i+1) + ": ");
    signalType = value{1};
    portion = smallSignal(signalType, samplesTime);
    signal = [signal, portion];
end

