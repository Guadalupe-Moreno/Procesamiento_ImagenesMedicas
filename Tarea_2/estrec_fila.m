clc; close all; clear all

F=[0 0 0 0 0 7 0 0 0 0 0 7 7 7 7 7 0 0 0 0 0 1 2 3 4 5 6 7 7 7 7 7];
figure, imagesc(F); colormap(gray(8));

figure, plot(F, '-ro', 'linewidth',1, 'markersize',7, 'markeredgecolor','b'); title('Línea Original');
grid on
legend('fila de una imagen')
text(6.5,6.8,'ruido')
text(16.5,6,'borde ideal')
text(25,3.5,'borde real')
%filtrado
H=ones(1,9);
H=1/9*(H);
I=conv(F, H);
figure, imagesc(I); colormap(gray(8));
figure, plot(I, '-bo', 'linewidth',1, 'markersize',7, 'markeredgecolor','r'); title('Línea Filtrada')
grid on