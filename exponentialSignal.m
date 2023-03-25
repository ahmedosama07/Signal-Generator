function exponential = exponentialSignal(samplesTime)
%exponentialSignal Summary of this function goes here
%   Function creates exponential signal

prompt = {'Amplitude: ','Exponent: '};
[amplitude, exponent] = inputdlg(prompt);
exponential = amplitude*exp(exponent*samplesTime);
end

