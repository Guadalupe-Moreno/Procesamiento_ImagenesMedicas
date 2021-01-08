clc; close all; clear all

A=imread('ct.jpg');
A=rgb2gray(A);
A=double(A);
[f,c]=size(A);
% Calculo la transformada discreta de Fourier (DFT)
DFT_A=fft2(A);
% Centro el espectro
DFT_A=fftshift(DFT_A);
% Frecuencia de corte
D0=f/2/15;
% Orden del filtro
N=2;
% Construyo un filtro butterworth pasaaltas
PasaaltasButter=zeros(f,c);
for i=1:f
    for j=1:c
        D=sqrt((i-f/2)^2+(j-c/2)^2); % Se determina la distancia al centro del punto (i,j)
            PasaaltasButter(i,j)=1/(1+((D0/D)^2*N));
    end
end
% Multiplico la transfomada de la imagen por el filtro ideal
DFT_A_filtrada=DFT_A.*PasaaltasButter; % Multiplico elemento a elemento
% Aplico la DFT inversa
A_filtrada=ifft2(DFT_A_filtrada);
% Tomo el modulo para descartar cualquier residuo del tipo complejo
A_filtrada=abs(A_filtrada);

figure, imshow(uint8(A)), title('Imagen original')
figure, mesh(abs(log(DFT_A+1))),colorbar, title('Espectro de la imagen original')
figure, imshow(PasaaltasButter), title('Filtro pasaaltas Butterworth')
figure, mesh(abs(log(DFT_A_filtrada+1))),colorbar, title('Espectro de la imagen filtrada')
figure, imshow(uint8(A_filtrada)), title('Imagen filtrada')