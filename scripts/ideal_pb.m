clc; close all; clear all

A=imread('ct.jpg');
A=rgb2gray(A);
A=double(A);
[f,c]=size(A);
% Calculo la transformada discreta de Fourier (DFT)
DFT_A=fft2(A);
% Centro el espectro
DFT_A=fftshift(DFT_A);
% Construyo un filtro ideal pasabajos
% Frecuencia de corte
D0=f/2/7;
PasabajosIdeal=zeros(f,c);
for i=1:f
    for j=1:c
        D=sqrt((i-f/2)^2+(j-c/2)^2);  % Se determina la distancia al centro del punto (i,j)
        if D<D0
            PasabajosIdeal(i,j)=1;
        end
    end
end
% Multiplico la transfomada de la imagen por el filtro ideal
DFT_A_filtrada=DFT_A.*PasabajosIdeal;  % Multiplico elemento a elemento
% Aplico la DFT inversa
A_filtrada=ifft2(DFT_A_filtrada);
% Tomo el modulo para descartar cualquier residuo del tipo complejo
A_filtrada=abs(A_filtrada);

figure, imshow(uint8(A)), title('Imagen original')
figure, mesh(abs(log(DFT_A+1))),colorbar, title('Espectro de la imagen original')
figure, imshow(PasabajosIdeal), title('Filtro pasabajos ideal')
figure, mesh(abs(log(DFT_A_filtrada+1))),colorbar, title('Espectro de la imagen filtrada')
figure, imshow(uint8(A_filtrada)), title('Imagen filtrada')
