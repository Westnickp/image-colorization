function newImage = recolourise(myImage, sigma_1, sigma_2, p, delta, phi)

v = size(myImage);
xrange = v(1);
yrange = v(2);
newImage = zeros(xrange,yrange,3);

[D, colours] = extractColouredPixels(myImage);
n = length(D);

gamma = 0.3*colours(:,1) + 0.59*colours(:,2) + 0.11*colours(:,3);
mat = K_matrix(D, gamma, sigma_1, sigma_2, p, phi);

for i = 1:3
    s = colours(:,i);
    a = (mat + delta*n*eye(n))\s;
    for x = 1:xrange
        for y = 1:yrange
            F = 0;
            for j = 1:n
                F = F + K(D(j,:), [x,y], gamma(j), myImage(x,y,i), sigma_1, sigma_2, p, phi) * a(j);
            end
            newImage(x,y,i) = F;
        end
    end
end

newImage = round(newImage);
newImage(newImage > 256) = 256;
newImage(newImage < 0) = 0;
newImage = uint8(newImage);


