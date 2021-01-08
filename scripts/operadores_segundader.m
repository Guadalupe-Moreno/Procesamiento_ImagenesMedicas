clc; close all; clear all

%imagen matriz
a=zeros(120, 120);
a(41:80, 41:80)=1;
figure(1), imagesc(a); colormap(gray(256)); title('Imagen Matriz'); axis equal

% %imagen sintética
% a=imread('octagono_central.tif');
% figure(1); imagesc(a), colormap(gray(256)); title('imagen original'); axis equal

BW1 = edge(a,'log');
BW2 = edge(a,'zerocross');

figure(2);
subplot(1,2,1); imagesc(BW1), colormap(gray(2)); title('Operador LoG'); axis equal
subplot(1,2,2); imagesc(BW2); colormap(gray(2)); title('Operador Cruce por Cero'); axis equal

r=BW1-BW2;
figure(3); imagesc(r), colormap(gray(2)); title('comprobación'); axis equal
