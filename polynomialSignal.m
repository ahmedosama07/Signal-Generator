function polynomial = polynomialSignal(samplesTime)
%polynomialSignal Summary of this function goes here
%   Function creates a polynomial signal

degreeVal = inputdlg("Degree: ");
degree = str2num(degreeVal{1});
coeffenets = zeros(1, degree+1);
polynomial = 0;
for i=1:degree+1
    val = inputdlg("coeffecien t^" + (degree+1-i) + ": ");
    coeffenets(i) = str2num(val{1});
    polynomial = polynomial + coeffenets(i) * samplesTime.^((degree+1)-i);
end
end

