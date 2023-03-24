function [modifiedSignal,operationTime] = operations(signal,time)
%OPERATIONS Summary of this function goes here
%   function that handles operations.
modifiedSignal = signal;
operationTime = time;
n = 2;
while 1 
    clc;
    fprintf("1. Amplitude scaling\n2. Time reversal\n3. Time shift\n4. Expansion\n");
    fprintf("5. Compression\n6. Clipping\n7. first derivative\n8. None\n");
    operation = input("Please pick the operation you would like to perform, to exit select none\n");
switch operation
    case 1
        [modifiedSignal,operationTime] = AmplitudeScaling(signal,time);
        figure(n);
        title("Amplitude Scale");
    case 2
        [modifiedSignal,operationTime] = TimeReversal(signal,time);
        figure(n);
        title("Time Reversal");
    case 3
        [modifiedSignal,operationTime] = TimeShift(signal,time);
        figure(n);
        title("Time Shift");
    case 4
        [modifiedSignal,operationTime] = Expansion(signal,time);
        figure(n);
        title("Expantsion");
    case 5
        [modifiedSignal,operationTime] = Compression(signal,time);
        figure(n);
        title("Compression");
    case 6
        [modifiedSignal,operationTime] = Clipping(signal,time);
        figure(n);
        title("Clipping");
    case 7
        [modifiedSignal,operationTime] = FirstDerivative(signal,time);
        figure(n);
        title("First Derivative");
    case 8
        break;
end
    n = n + 1;
    plot(operationTime,modifiedSignal);
    signal = modifiedSignal;
    time = operationTime;
end
end





