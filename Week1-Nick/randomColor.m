function [partiallyRecolorized] = randomColor(grayscale,color,p)
%REPOPULATECOLORINFO Summary of this function goes here
%   Detailed explanation goes here
dimensions = size(color);
partiallyRecolorized = zeros(dimensions);
for i = 1:dimensions(1)
    for j = 1:dimensions(2)
        if rand <= p
            partiallyRecolorized(i,j,:) = color(i,j,:);
        else
            g = grayscale(i, j);
            partiallyRecolorized(i,j,:) = [g g g];
        end
    end
end
partiallyRecolorized = uint8(partiallyRecolorized);
end

