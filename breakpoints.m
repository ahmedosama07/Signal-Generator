function bPoints = breakpoints(breakpointsNumber, startTime, endTime)
%breakpoints Summary of this function goes here
%   Function asks the user for breakpoints

bPoints = startTime + zeros(1, breakpointsNumber);
i = 1;
while (i <= breakpointsNumber)
   p = input("Breakpoint " + i + ": ");
   
   if((p > startTime) && (p < endTime) && (ismember(p, bPoints) == 0))
       bPoints(i) = p;
   else
       fprintf('Provide a correct breakpoint:\n');
       i = i - 1;
   end
   i = i + 1;
end
end
