function [partiallyRecolorized] = gridColor(grayscale,color,spacing)
%REPOPULATECOLORINFO Summary of this function goes here
%   Detailed explanation goes here
dimensions = size(color);
partiallyRecolorized = zeros(dimensions);
x = spacing; y = spacing;
for i = 1:dimensions(1)
    for j = 1:dimensions(2)
        if mod(i, spacing) == 0 && mod(j, spacing) == 0
            partiallyRecolorized(i,j,:) = color(i,j,:);
        else
            g = grayscale(i, j);
            partiallyRecolorized(i,j,:) = [g g g];
        end
    end
end
partiallyRecolorized = uint8(partiallyRecolorized);
end

