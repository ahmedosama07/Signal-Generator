function bPoints = breakpoints(startTime, endTime, breakpointsNumber)
%breakpoints Summary of this function goes here
%   Function asks the user for breakpoints

bPoints = startTime + zeros(1, breakpointsNumber);
i = 1;
while (i <= breakpointsNumber)
    p = inputdlg("Breakpoint " + i + ": ","Breakpoint " + i + ": ");
   
   if((str2num(p{1}) > startTime) && (str2num(p{1}) < endTime) && (ismember(str2num(p{1}), bPoints) == 0))
       bPoints(i) = str2num(p{1});
   else
       i = i - 1;
   end
   i = i + 1;
end
end
