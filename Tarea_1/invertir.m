clc
close all
clear all

f=[2 3 3 3 4 4 4 5; 2 3 3 3 4 4 4 5; 2 3 3 3 4 4 4 5; 2 3 3 3 4 4 4 5; 2 3 3 3 4 4 4 5; 2 3 3 3 4 4 4 5; 2 3 3 3 4 4 4 5; 2 3 3 3 4 4 4 5]
f1=uint8(f)
figure(1); image(f1); colormap(gray(8)); title('Imagen original');
axis equal
figure(2); hist(f1(:),[0:7]); title('Histograma de la Imagen Original')

[f,c]=size(f1);
a=7; %blanco con 3 bits, 8 niveles de gris [0-7]

for n=1:c
    for m=1:f
        I2(m,n)=a-[f1(m,n)] %función inversa
    end
end

figure(3); image(I2); colormap(gray(8)); title('Negativo de la Imagen');
axis equal
figure(4); hist(I2(:),[0:7]); title('Histograma de la Imagen Negativa');