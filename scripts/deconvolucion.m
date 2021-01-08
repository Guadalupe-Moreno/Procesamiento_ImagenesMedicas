clc
close all
clear all

f=imread('cerebro.jpg');
f=rgb2gray(f);
figure, imshow(uint8(f)), title('Imagen original')
axis equal

PSF = fspecial('gaussian',5,10);
figure; 
surf(abs(PSF)), colorbar
title('Espectro del filtro gaussiano pasa-bajas');

V = .0001;
h=imnoise(imfilter(f,PSF),'gaussian',0,V);
%h=imfilter(f,PSF);
figure, imshow(uint8(h)), title('Imagen emborronada')
axis equal

[J P] = deconvblind(h,PSF);
figure, imshow(uint8(J)), title('Imagen Restaurada por deconvolución directo con la PSF')
axis equal

wnr1 = deconvwnr(h, PSF, 0.05);
figure, imshow(uint8(wnr1)), title('Imagen deconvolucionada con filtro de wiener')
axis equal

figure,
subplot(2,2,1); imshow(uint8(f)), title('Imagen original')
axis equal
subplot(2,2,2); imshow(uint8(h)), title('Imagen emborronada y con ruido (ambos gaussianos)')
axis equal
subplot(2,2,3); imshow(uint8(J)), title('Imagen Restaurada por deconvolución directo con la PSF')
axis equal
subplot(2,2,4); imshow(uint8(wnr1)), title('Imagen deconvolucionada con filtro de wiener (PSF y NSR=0.05)')
axis equal
