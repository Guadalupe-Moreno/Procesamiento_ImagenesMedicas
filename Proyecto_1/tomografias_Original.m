clc
close all
clear all

im1=imread('ct1.tif'); 
im2=imread('ct2.tif'); 

subplot(2,2,1), imagesc(im1), colormap(gray(256)), title('Imagen Original A');
subplot(2,2,2), imagesc(im2), colormap(gray(256)), title('Imagen Original B');
subplot(2,2,3), hist(im1(:),[0:255]), title('Histograma A');
subplot(2,2,4), hist(im2(:),[0:255]), title('Histograma B');