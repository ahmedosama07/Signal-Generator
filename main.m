clear;
[samplingFrequency, startTime, endTime, breakpointsNumber]=start();

if (breakpointsNumber > 0)
    bPoints = breakpoints(breakpointsNumber, startTime, endTime);
else
    bPoints = 0;
end

