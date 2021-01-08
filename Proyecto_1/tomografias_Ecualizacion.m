clc
close all
clear all

im1=imread('ct1_Ajuste.tif'); 
im2=imread('ct2_Ajuste.tif'); 

I1 = histeq(im1);
I2 = histeq(im2);

subplot(2,2,1), imagesc(I1), colormap(gray(256)), title('Imagen Ecualizada A');
subplot(2,2,2), imagesc(I2), colormap(gray(256)), title('Imagen Ecualizada B');
subplot(2,2,3), hist(I1(:),[0:255]), title('Histograma A');
subplot(2,2,4), hist(I2(:),[0:255]), title('Histograma B');

imwrite(I1,'C:\Users\Guadalupe Moreno\Desktop\2021_1\Prosesamiento_Imagenes\Proyecto\ct1_Ec.tif');
imwrite(I2,'C:\Users\Guadalupe Moreno\Desktop\2021_1\Prosesamiento_Imagenes\Proyecto\ct2_Ec.tif');