function portion = smallSignal(signalType, samplesTime)
%smallSignal Summary of this function goes here
%   Function creates signal portions
switch signalType
    
    case 1
        portion = DCsignal(samplesTime);
    case 2
        portion = rampSignal(samplesTime);
    case 3
        portion = polynomialSignal(samplesTime);
    case 4
        portion = exponentialSignal(samplesTime);
    case 5
        portion = sinusoidalSignal(samplesTime);
    case 6
        portion = sincFunction(samplesTime);
    case 7
        portion = trianglePulse(samplesTime);
end
end

