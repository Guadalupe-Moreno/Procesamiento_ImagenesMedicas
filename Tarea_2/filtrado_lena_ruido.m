clc
close all
clear all

%filtrado pasa bajas

i=imread('lena_ruido.tif');
figure; imagesc(i); colormap(gray(256));title('i(m,n)')
axis equal

h0=(1/9)*[1 1 1; 1 1 1; 1 1 1];
g0=conv2(i,h0,'same');
figure;image(g0); colormap(gray(256));title('g0(m,n)')
axis equal

h1=(1/10)*[1 1 1; 1 2 1; 1 1 1];
g1=conv2(i,h1,'same');
figure;image(g1); colormap(gray(256));title('g1(m,n)')
axis equal

h2=(1/16)*[1 2 1; 2 4 2; 1 2 1];
g2=conv2(i,h2,'same');
figure;image(g2); colormap(gray(256));title('g2(m,n)')
axis equal

h3=[0.06 0.1 0.06; 0.1 0.16 0.1; 0.06 0.1 0.06];
g3=conv2(i,h3,'same');
figure;image(g3); colormap(gray(256));title('g3(m,n)')
axis equal 

h4=[0.03 0.035 0.03; 0.035 0.04 0.035; 0.03 0.035 0.03];
g4=conv2(i,h4,'same');
figure;image(g4); colormap(gray(256));title('g4(m,n)')
axis equal

h5=[0.015 0.017 0.015; 0.017 0.018 0.017; 0.016 0.017 0.016];
g5=conv2(i,h5,'same');
figure;image(g5); colormap(gray(256));title('g5(m,n)')
axis equal

subplot(3,2,1),image(g0),colormap(gray(256)),
title('g0(m,n)');
subplot(3,2,2),image(g1),colormap(gray(256)),
title('g1(m,n)');
subplot(3,2,3),image(g2),colormap(gray(256)),
title('g2(m,n)');
subplot(3,2,4),image(g3),colormap(gray(256)),
title('g3(m,n)'); 
subplot(3,2,5),image(g4),colormap(gray(256)),
title('g4(m,n)');
subplot(3,2,6),image(g5),colormap(gray(256)),
title('g5(m,n)'); 
