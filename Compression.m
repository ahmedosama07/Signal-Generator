function [modifiedSignal,operationTime] = Compression(signal,time)
%Compression Summary of this function goes here
%   Function compresses the signal
    compressionFactorval = inputdlg("compression factor:");
    compressionFactor = str2num(compressionFactorval{1});
    modifiedSignal = downsample(signal, compressionFactor);
    operationTime = linspace(time(1)*1/compressionFactor,time(end)*1/compressionFactor,length(time)/compressionFactor);
end
