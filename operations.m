function [modifiedSignal,operationTime] = operations(signal,time)
%OPERATIONS Summary of this function goes here
%   function that handles operations.
while 1 
    fprintf("1. Amplitude scaling\n2. Time reversal\n3. Time shift\n4. Expansion\n");
    fprintf("5. Compression\n6. Clipping\n7. first derivative\n8. None\n");
    operation = input("Please pick the operation you would like to perform, to exit select none\n");
switch operation
    
    case 1
        [modifiedSignal,operationTime] = AmplitudeScaling(signal,time);
    case 2
        [modifiedSignal,operationTime] = TimeReversal(signal,time);
    case 3
        [modifiedSignal,operationTime] = TimeShift(signal,time);
    case 4
        [modifiedSignal,operationTime] = Expansion(signal,time);
    case 5
        [modifiedSignal,operationTime] = Compression(signal,time);
    case 6
        [modifiedSignal,operationTime] = Clipping(signal,time);
    case 7
        [modifiedSignal,operationTime] = FirstDerivative(signal,time);
    case 8
        break;
end
    plot(operationTime,modifiedSignal);
    signal = modifiedSignal;
    time = operationTime;
end
end
function [modifiedSignal,operationTime] = AmplitudeScaling(signal,time)
    scaleValue = input("Scale value:");
    modifiedSignal = signal*scaleValue;
    operationTime = time;
end
function [modifiedSignal,operationTime] = TimeReversal(signal,time)
    modifiedSignal = signal(end:-1:1);
    operationTime = time;
end
function [modifiedSignal,operationTime] = TimeShift(signal,time)
    shiftValue = input("Shift value:");
    modifiedSignal = signal;
    operationTime = time+shiftValue;
end
function [modifiedSignal,operationTime] = Expansion(signal,time)
    expansionFactor = input("Expansion factor:");
    modifiedSignal = resample(signal,expansionFactor,1);
    operationTime = linspace(time(1)*expansionFactor,time(end)*expansionFactor,length(time)*expansionFactor);
end
function [modifiedSignal,operationTime] = Compression(signal,time)
    compressionFactor = input("compression factor:");
    modifiedSignal = resample(signal,1,compressionFactor);
    operationTime = linspace(time(1)*1/compressionFactor,time(end)*1/compressionFactor,length(time)/compressionFactor);
end
function [modifiedSignal,operationTime] = Clipping(signal,time)
    upperBound = input("Upper bound:");
    lowerBound = input("Lower bound:");
    modifiedSignal = signal;
    modifiedSignal(find(signal>upperBound))=upperBound;
    modifiedSignal(find(signal<lowerBound))=lowerBound;
    operationTime = time;
end
function [modifiedSignal,operationTime] = FirstDerivative(signal,time)
    modifiedSignal = (length(time)/(abs(time(1)-time(end))))*diff(signal);
    operationTime = time(1:end-1);
end