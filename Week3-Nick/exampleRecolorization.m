sigma_1 = 8;
sigma_2 = 100;
p = 0.5;
delta = 2e-4;

a = imread("../Images/nature1_64x64.jpeg");
r = a(:, :, 1);
g = a(:, :, 2);
b = a(:, :, 3);



myGrayscale = createGrayscale(a);
[myGridded, coloredPixels] = gridColor(myGrayscale, a, 7);
recoloured = recolourise(myGridded, sigma_1, sigma_2, p, delta, @gaussian);
optimalParams = findOptimalParameters(a, 7, 12)
recoloured2 = recolourise(myGridded, optimalParams(1), optimalParams(2), p, delta, @gaussian);

subplot(2,2,1), imshow(a);
subplot(2,2,2), imshow(myGrayscale);
subplot(2,2,3), imshow(recoloured);
subplot(2,2,4), imshow(recoloured2);
getMeanSquaredError(a, recoloured)
getMeanSquaredError(a, recoloured2)