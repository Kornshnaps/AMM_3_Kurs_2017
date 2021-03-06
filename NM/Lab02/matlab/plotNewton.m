function plotNewton(a, b, n, number)
% Основная функция, вычисляет коэффициенты полинома Ньютона по одному из
% методов рассчета и строит сравнительные графики для исходной функции и
% полинома Ньютона, с нанесением узловых точек

% 1 Создаем новое окно для графика и подписываем оси
figure; 
xlabel('x'); 
ylabel('y'); 
hold on; 
grid on; 

% 2 Вычисляем коэффициенты полинома Ньютона и узловые точки через базовую
% функцию:
[D, X] = coefPolyNewtonBase(a, b, n, number);

% 3 Печатаем узловые точки:
Y = f(X); 
plot (X, Y, 'ro');

% 3 Печатаем график полинома Ньютона:
XX = linspace(a, b, 10000);
LX = XX * 0;
for i = 1:1:length(XX)
    LX(i) = pointNewton(D, X, XX(i));
end
plot(XX, LX, 'b');

% 4 Печатаем график функции:
X = XX;
Y = f(X);
plot(X, Y, 'r--');

% 5 Подписываем легенду
title('Полиномиальная интерполяция', 'FontName', 'Courier');
name = strcat('Полином Ньютона №', int2str(number)); % Конкатенируем строки
h1 = legend('Узловые точки', name, 'Функция');
set(h1, 'FontName', 'Courier');

% 6 Выставляем более-менее приемлемый масштаб:
axis([a b min(Y)-0.2 max(Y)+0.2]) 

end