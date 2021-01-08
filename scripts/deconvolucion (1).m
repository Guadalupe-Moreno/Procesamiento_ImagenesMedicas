clc
close all
clear all

%imagen sin emborronamiento
f=imread('cerebro.jpg');
f=rgb2gray(f);
figure, imshow(uint8(f)), title('Imagen original')
axis equal

%filtro suavizador
PSF = fspecial('gaussian',5,8);
figure; 
surf(abs(PSF)), colorbar
title('Espectro del filtro gaussiano pasa-bajas');

%adición de ruido gaussiano
V = .0001;
h=imnoise(imfilter(f,PSF),'gaussian',0,V);
figure, imshow(uint8(h)), title('Imagen emborronada')
axis equal

%restauración
[J P] = deconvblind(h,PSF);
figure, imshow(uint8(J)), title('Imagen restaurada')
axis equal