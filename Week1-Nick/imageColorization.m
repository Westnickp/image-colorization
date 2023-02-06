%% Load images
%Helpful commands
%imread
%imshow
%imwrite

%Grayscale --> gamma = round(0.3r + 0.59g + 0.11b)

datadir = "/Users/nickwest/Documents/Oxford/MMSC/Hilary/Image Colorization/Images/";
a = imread(datadir+"nature5.jpeg");
myGrayscale = createGrayscale(a);
myRandom = randomColor(myGrayscale, a, 0.2);
myGridded = gridColor(myGrayscale, a, 2);
figure(1)
imshow(a);
figure(2)
imshow(createGrayscale(a));
figure(3)
imshow(myRandom)
figure(4)
imshow(myGridded)


