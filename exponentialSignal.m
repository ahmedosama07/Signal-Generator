function exponential = exponentialSignal(samplesTime)
%exponentialSignal Summary of this function goes here
%   Function creates exponential signal

amplitude = input("Amplitude: ");
exponent = input("Exponent: ");
exponential = amplitude*exp(exponent*samplesTime);
end

