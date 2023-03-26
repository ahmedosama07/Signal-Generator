function dc = DCsignal(samplesTime)
%DCsignal Summary of this function goes here
%   Function creates DC signal

val = inputdlg("Amplitude: ");
amplitude = str2num(val{1});
dc = amplitude*ones(1,length(samplesTime));
end

