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
figure(1); image(f); colormap(gray(8)); title('Imagen original');
axis equal
figure(2); hist(f(:),[0:7]); title('Histograma de la Imagen Original')

umbral=3;

[m n]=size(f);
f2=uint8(zeros(m,n));

for i=1:m
    for j=1:n
        if f(i,j)<=umbral
            f2(i,j)=0;
        else
            f2(i,j)=7;
        end
    end
end

figure(3); image(f2); colormap(gray(8)); title('Imagen Binaria');
axis equal
figure(4); hist(double(f2(:)),[0:7]); title('Histograma de la Imagen Binaria');