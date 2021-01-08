clc; close all; clear all

%imagen matriz
a=zeros(9, 9);
a(3:7, 3:7)=255
figure(1), imagesc(a); colormap(gray(256)); title('Imagen Matriz'); axis equal

L=[-1 -1 -1; -1 8 -1; -1 -1 -1];
%L=[0 -1 -0; -1 4 -1; 0 -1 0];

OL=conv2(a, L, 'same')

%OL=edge(a,'log');

figure(2); imagesc(OL), colormap(gray(2)); title('Operador Laplaciano'); axis equal
