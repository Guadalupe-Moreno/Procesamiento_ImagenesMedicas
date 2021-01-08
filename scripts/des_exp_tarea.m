clc
close all
clear all

mapa=gray(8);

A=[0 0 0 0;
   0 1 1 1;
   1 2 2 2;
   3 3 4 5];
A=uint8(A);

figure(1)
subplot(1,2,1); image(A); colormap(mapa); title('Imagen Original')
subplot(1,2,2); hist(A(:),(0:7)); title('Histograma de la Imagen Original')

%Desplazamiento

des=2;
B=A+des;

figure(2)
subplot(1,2,1); image(B); colormap(mapa); title('Imagen Desplazada')
subplot(1,2,2);hist(B(:),(0:7)); title('Histograma de la Imagen Desplazada')

%expansión

A2=double(b);
[a,b]=size(A2);
for n=1:b
for m=1:a
    C(m,n)=(A2(m,n)/5)*7;
end
end

figure(3)
subplot(1,2,1); image(C); colormap(mapa); title('Imagen Expandida')
subplot(1,2,2);hist(C(:),(0:7)); title('Histograma de la Imagen Expandida')