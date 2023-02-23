function [D, colours] = extractColouredPixels(image)

v = size(image);
xrange = v(1);
yrange = v(2);

D = [];
colours = [];

for x = 1:xrange
    for y = 1:yrange
        if image(x,y,1) ~= image(x,y,2) && image(x,y,1) ~= image(x,y,3)
            D(end+1,:) = [x,y];
            colours(end+1,:) = image(x,y,:);
        end
    end
end
end