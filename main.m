clear;
[samplingFrequency, startTime, endTime, time, breakpointsNumber]=start();

if (breakpointsNumber > 0)
    bPoints = breakpoints(startTime, endTime, breakpointsNumber);
else
    bPoints = 0;
end

signal = signalGenerator(samplingFrequency, startTime, endTime, bPoints);

figure(1)
plot(t,signal)
title('Original Signal')