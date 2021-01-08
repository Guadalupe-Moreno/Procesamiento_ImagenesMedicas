clc
close all
clear all

f=[2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5];
f1=double(f)
figure(1); image(f1); colormap(gray(8)); title('Imagen original');
axis equal
figure(2); hist(f1(:),[0:7]); title('Histograma de la Imagen Original')

a=min(f1(:));
b=max(f1(:));

m=7/(b-a);

f2=(m*(f1-a))

figure(3); image(f2); colormap(gray(8)); title('Imagen Expandida');
axis equal
figure(4); hist(f2(:),[0:7]); title('Histograma de la Imagen Expandida');