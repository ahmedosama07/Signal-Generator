clear;
[samplingFrequency, startTime, endTime, breakpointsNumber]=start();

if (breakpointsNumber > 0)
    bPoints = breakpoints(startTime, endTime, breakpointsNumber);
else
    bPoints = 0;
end

signal = signalGenerator(samplingFrequency, startTime, endTime, bPoints, breakpointsNumber);
time = linspace(startTime, endTime,(endTime - startTime)*samplingFrequency );
figure(1);
plot(time, signal);
title('Original Signal');

[modifiedSignal,operationTime] = operations(signal,time);
figure(1);
subplot(2, 1, 1);
plot(time, signal);
title('Original Signal');
subplot(2, 1, 2);
plot(operationTime, modifiedSignal);
ylim([min([min(signal) min(modifiedSignal)]) max([max(signal) max(modifiedSignal)])]);
title('Modified Signal');