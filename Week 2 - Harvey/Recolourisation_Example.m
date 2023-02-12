sigma_1 = 100;
sigma_2 = 100;
p = 0.5;
delta = 2e-4;

a = imread("nature1.jpeg");

myGrayscale = createGrayscale(a);
myGridded = gridColor(myGrayscale, a, 10);
recoloured = recolourise(myGridded, sigma_1, sigma_2, p, delta, @gaussian);

subplot(2,2,1), imshow(a);
subplot(2,2,2), imshow(myGrayscale);
subplot(2,2,3), imshow(myGridded);
subplot(2,2,4), imshow(recoloured);