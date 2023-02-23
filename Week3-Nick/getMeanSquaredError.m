function [meanError] = getMeanSquaredError(realImg, reconstructedImg)
%GETMEANSQUAREDERROR 
realImgAsDouble = double(realImg);
reconstructedImgAsDouble = double(reconstructedImg);
squaredErrors = (realImgAsDouble - reconstructedImgAsDouble).^2;
totalError = sum(squaredErrors, "all");
meanError = totalError/numel(realImg);
end

