clc; close all; clear all

A=[0 0 0 0 0 0; 1 1 1 1 1 1; 1 1 2 2 2 2; 2 2 3 3 3 3; 3 4 4 5 5 6];

figure(1); image(A); colormap(gray(8)); title('Imagen Original');
axis equal;
figure(2); hist(A(:),[0:7]); title('Histograma de la Imagen Original');

pz=[3 3 3 3 3 4; 4 4 4 4 4 5; 5 5 5 5 5 5; 5 6 6 6 6 6; 6 7 7 7 7 7];
figure(3); hist(pz(:),[0:7]); title('Histograma a Especificar');

%ecualización

A1=uint8(A);
 
h=imhist(A1);
h=h';
 
A1=double(A1);
 
[m n]=size(A1);
H=h/(m*n);
 
Pf=zeros(1,16);

suma=0;
for j=1:16
    suma=suma+H(j);
    Pf(j)=suma;
end
    
f=0:7;
g=7*Pf(f+1);
 
B=7*Pf(A1+1);

figure(4); image(B); colormap(gray(8)); title('Imagen Ecualizada Uniformemente');
axis equal;
figure(5); hist(B(:),[0:7]); title('Histograma de la Imagen Ecualizada Uniformemente');

A=uint8(B);
pz2=uint8(pz);
histo=imhist(pz2);
C=histeq(A, histo);
figure(6); image(C); colormap(gray(8)); title('Imagen Original Especificada');
axis equal;
figure(7); hist(C(:),[0:7]); title('Histograma de la Imagen Original Especificada');