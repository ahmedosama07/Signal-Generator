function [samplingFrequency, startTime, endTime, breakpointsNumber] = start()
%start Summary of this function goes here
%   Function asks user for basic information [sampling frequency, number of
%   breakpoints, start and end times]
clc;

samplingFrequency = input("Sampling frequency: ");

startTime = input("Start time: ");

endTime = input("End time: ");

breakpointsNumber = input("number of breakpoints: ");
end

