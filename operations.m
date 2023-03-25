function [modifiedSignal,operationTime] = operations(signal,time)
%OPERATIONS Summary of this function goes here
%   function that handles operations.
modifiedSignal = signal;
operationTime = time;
n = 2;
    clc;
    fprintf("1. Amplitude scaling\n2. Time reversal\n3. Time shift\n4. Expansion\n");
    fprintf("5. Compression\n6. Clipping\n7. first derivative\n8. None\n");
    formats = struct('type', {}, 'style', {}, 'items', {}, 'format', {}, 'limits', {}, 'size', {});
    formats(1,1).type   = 'list';
    formats(1,1).style = 'popupmenu';
    formats(1,1).items  = {'1. Amplitude scaling','2. Time reversal', '3. Time shift', '4. Expansion',...
        '5. Compression', '6. Clipping', '7. First derivative', '8. None'};
    
    value = inputsdlg('Mdification: ', 'Signal operations', formats);
    operation = value{1};
    %operation = input("Please pick the operation you would like to perform, to exit select none\n");
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
end
    plot(operationTime,modifiedSignal);
    ylim([min([min(signal) min(modifiedSignal)]) max([max(signal) max(modifiedSignal)])]);
    signal = modifiedSignal;
    time = operationTime;
end




