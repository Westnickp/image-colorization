function [optimalParams] = findOptimalParameters(inputImg, spacing, maxIter)
%FINDOPTIMALPARAMETERS

X0 = [100 100];
p = 0.5;
delta = 2e-4;
myGrayscale = createGrayscale(inputImg);
[myGridded, ~] = gridColor(myGrayscale, inputImg, spacing);

options = optimset("MaxIter", maxIter);

objFunc = @(X) getMeanSquaredError(inputImg, recolourise(myGridded, X(1), X(2), p, delta, @gaussian));
optimalParams = fminsearch(objFunc, X0, options);
end

