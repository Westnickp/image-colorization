function [grayscaleImg] = createGrayscale(inputImg)
%CREATEGRAYSCALE Summary of this function goes here
%   Detailed explanation goes here
r = inputImg(:, :, 1);
g = inputImg(:, :, 2);
b = inputImg(:, :, 3);
grayscaleImg = uint8(0.3*r + 0.59*g + 0.11*b);
end

