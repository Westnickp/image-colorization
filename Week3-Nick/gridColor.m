function [partiallyRecolorized, doColorize] = gridColor(grayscale,color,spacing)
%GRIDCOLOR Summary of this function goes here
%   Detailed explanation goes here
dimensions = size(color);
partiallyRecolorized = zeros(dimensions);
doColorize = false([1 dimensions(1)*dimensions(2)]);
x = spacing; y = spacing;
for i = 1:dimensions(1)
    for j = 1:dimensions(2)
        if mod(i, spacing) == 0 && mod(j, spacing) == 0
            partiallyRecolorized(i,j,:) = color(i,j,:);
            doColorize((i-1)*dimensions(2)+j) = true;
        else
            g = grayscale(i, j);
            partiallyRecolorized(i,j,:) = [g g g];
        end
    end
end
doColorize = reshape(doColorize', [dimensions(2) dimensions(1)])'; % This reshapes doColorize to have true in positions with color info
partiallyRecolorized = uint8(partiallyRecolorized);
end

