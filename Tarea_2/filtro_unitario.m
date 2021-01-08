clc
close all
clear all

%filtrado pasa bajas unitario

i=zeros(11,11)
i(6,6)=63
figure;image(i); colormap(gray(64));title('f(m,n)')
axis equal

h0=(1/4)*[1 1;  1 1];
g0=conv2(i,h0,'same')
figure;image(g0); colormap(gray(64));title('g0(m,n)')
axis equal

h1=(1/9)*[1 1 1; 1 1 1; 1 1 1];
g1=conv2(i,h1,'same')
figure;image(g1); colormap(gray(64));title('g1(m,n)')
axis equal

h2=(1/25)*[1 1 1 1 1 ; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1];
g2=conv2(i,h2,'same')
figure;image(g2); colormap(gray(64));title('g2(m,n)')
axis equal

h3=(1/49)*[1 1 1 1 1 1 1 ; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1];
g3=conv2(i,h3,'same')
figure;image(g3); colormap(gray(64));title('g3(m,n)')
axis equal

h4=(1/81)*[1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1];
g4=conv2(i,h4,'same')
figure;image(g4); colormap(gray(64));title('g4(m,n)')
axis equal

h5=(1/121)*[1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1];
g5=conv2(i,h5,'same')
figure;image(g5); colormap(gray(64));title('g5(m,n)')
axis equal