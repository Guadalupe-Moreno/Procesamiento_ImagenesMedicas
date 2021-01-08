clc
close all
clear all

%imagen original
f=[0 0 0 0 0 0 0; 0 0 0 0 0 0 0; 0 0 7 7 7 0 0; 0 0 7 7 7 0 0; 0 0 7 7 7 0 0; 0 0 0 0 0 0 0; 0 0 0 0 0 0 0]
figure(1);image(f); colormap(gray(8));title('Imagen original')
axis equal

%Filtro PB
h=(1/9)*[1 1 1; 1 1 1; 1 1 1]
figure(2), surf(abs(log(h))),colorbar, title('Espectro del filtro')

%aplicamos el proceso de emborronamiento a traves de la convolucion
g=conv2(f,h,'same')
y=uint8(g)
figure(3);image(g); colormap(gray(8));title('Imagen filtrada -emborronada-')
axis equal

%aplicamos en proceso de descomvolicionar la imagen emborrronada con la PSF
y=deconvblind(g,h)
y=uint8(y)
figure(4);image(y); colormap(gray(8));title('Imagen deconvolucionada')
axis equal