clc
close all
clear all

im1=imread('ct1.tif'); img1=imadjust(im1,[0.3 1],[],5);
im2=imread('ct2.tif'); img2=imadjust(im2,[0.3 0.7],[],5);

subplot(2,2,1), imagesc(img1), colormap(gray(256)), title('Imagen ajustada A');
subplot(2,2,2), imagesc(img2), colormap(gray(256)), title('Imagen ajustada B');
subplot(2,2,3), hist(img1(:),[0:255]), title('Histograma A');
subplot(2,2,4), hist(img2(:),[0:255]), title('Histograma B');

imwrite(img1,'C:\Users\Guadalupe Moreno\Desktop\2021_1\Prosesamiento_Imagenes\Proyecto\ct1_Ajuste.tif');
imwrite(img2,'C:\Users\Guadalupe Moreno\Desktop\2021_1\Prosesamiento_Imagenes\Proyecto\ct2_Ajuste.tif');

