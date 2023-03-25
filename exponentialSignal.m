function exponential = exponentialSignal(samplesTime)
%exponentialSignal Summary of this function goes here
%   Function creates exponential signal

prompt = {'Amplitude: ','Exponent: '};
val = inputdlg(prompt);
amplitude = str2num(val{1});
exponent = str2num(val{2});
exponential = amplitude*exp(exponent*samplesTime);
end

