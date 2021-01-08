clc
close all
clear all

%imagen matriz
f=zeros(120, 120);
f(41:80, 41:80)=1;
figure(1), imshow(f);  title('Imagen Sintética');

%filtros detectores de borde prewitt
%filtros detectores de borde sobel

% px=[-1 0 1; -1 0 1; -1 0 1];
% py=[1 1 1; 0 0 0; -1 -1 -1];

sx=[-1 0 1; -2 0 2; -1 0 1];
sy=[-1 -2 -1; 0 0 0; 1 2 1];

gx=conv2(f,sx,'same');
gy=conv2(f,sy,'same')

g=abs(gx)+abs(gy);
h=im2bw(g, 0);

% figure(2), imshow(gx)
% figure(3), imshow(gy)
% figure(4), imshow(h)

figure(2), imagesc(gx), colormap(gray(16)); title('Derivada en X de la Imagen');
axis equal
figure(3), imagesc(gy), colormap(gray(16)); title('Derivada en Y de la Imagen');
axis equal
figure(4), imagesc(h), colormap(gray(16)); title('Derivada en X+Y de la Imagen y Binarizada');
axis equal

%imagen sintética
a=imread('cuadro_central.tif');
figure(5), imagesc(a), colormap(gray);
axis equal

ix=conv2(a,sx,'same');
iy=conv2(a,sy,'same');

j=abs(ix)+abs(iy);
j=uint8(j);
hh=im2bw(j, 0);

figure(6), imagesc(ix), colormap(gray(16)); title('Derivada en X de la Imagen');
axis equal
figure(7), imagesc(iy), colormap(gray(16));  title('Derivada en Y de la Imagen');
axis equal
figure(8), imagesc(hh), colormap(gray(16)); title('Derivada en X+Y de la Imagen y Binarizada');
axis equal

%imagen real
b=imread('aorta-chest.tif');
figure(9), image(b), colormap(gray(256));
axis equal

cx=conv2(b,sx,'same');
cy=conv2(b,sy,'same');

j2=abs(cx)+abs(cy);
j2=uint8(j2);
ch=im2bw(j2, 0.5);

figure(10), image(cx), colormap(gray(256));
axis equal
figure(11), image(cy), colormap(gray(256));
axis equal
figure(12), imagesc(ch), colormap(gray(256));
axis equal