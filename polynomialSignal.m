function polynomial = polynomialSignal(samplesTime)
%polynomialSignal Summary of this function goes here
%   Function creates a polynomial signal

degree = input("Degree: ");
coeffenets = zeros(1, degree+1);
polynomial = 0;
for i=1:degree+1
    coeffenets(i) = input("coeffecien t^" + i + ": ");
    polynomial = polynomial + coeffenets(i) * samplesTime.^((degree+1)-i);
end
end

