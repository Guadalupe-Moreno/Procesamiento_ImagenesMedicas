clc; close all; clear all;

f=[0 0 0 1 2 3 4 5 6 7 7 7];
figure(1);image(f); colormap(gray(8));title('Borde Tipo Rampa')

g1=[0.087 0.640 0.087]; %line central del filto gaussiano 5X5 con con desv est 0.5
g2=[0.097 0.016 0.097]; %line central del filto gaussiano 5X5  con con desv est 1


c1=conv(f,g1, 'same')
c2=conv(f,g2, 'same')

r=c1-c2

h=im2bw(r, 0)
figure(2);imagesc(h); colormap(gray(8));title('Deteccion de Borde por DoG')
