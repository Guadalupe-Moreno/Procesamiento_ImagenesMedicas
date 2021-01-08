clc
close all
clear all

f=zeros(7,7);
f(3:5,3:5)=255

figure
imagesc(f)
colormap(gray(256))
axis equal

sx=[-1 0 1; -2 0 2; -1 0 1] %mascara sobel en dirección x
sy=[-1 -2 -1; 0 0 0; 1 2 1] %mascara sobel en dirección y

gx=conv2(f,sx,'same') %convolucion de la imagen f con la mascara sobel en x
gy=conv2(f,sy,'same') %convolucion de la imagen f con la mascara sobel en y

g=abs(gx)+abs(gy)

h=im2bw(g, 0)

figure
imagesc(h)
colormap(gray(256))
axis equal