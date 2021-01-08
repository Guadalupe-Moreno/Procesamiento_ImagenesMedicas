clc
close all
clear all

f=[2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5;
    2 3 3 3 4 4 4 5];
f1=uint16(f)
figure(1); image(f1); colormap(gray(8)); title('Imagen original');
axis equal
figure(2); hist(f1(:),[0:7]); title('Histograma de la Imagen Original')

[f,c]=size(f1);

%función potencia

a=1; %constante
g=5; %gamma

for n=1:c
    for m=1:f
        I2(m,n)=a*[(f1(m,n))^g]
    end
end

figure(3); image(I2); colormap(gray(4096)); title('Imagen de Salida -Potencia-');
axis equal
figure(4); hist(I2(:),[0:3126]); title('Histograma de la Imagen de Salida -Potencia-');

%función logarítmica
b=2;
I2=double(I2);
for n=1:c
 for m=1:f
     I3(m,n)=b*[log10(1+(I2(m,n)))]
 end
end
I4=uint8(I3)
figure(5); image(I4); colormap(gray(8));
title('Imagen de Salida -Logarítmica-');
axis equal
figure(6); hist(I4(:),[0:7]); title('Histograma de la Imagen de Salida -Logarítmica-');
