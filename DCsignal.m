function dc = DCsignal(samplesTime)
%DCsignal Summary of this function goes here
%   Function creates DC signal

amplitude = input("Amplitude: ");
dc = amplitude*ones(1,length(samplesTime));
end

