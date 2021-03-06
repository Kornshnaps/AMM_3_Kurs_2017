function plotSpline(a, b, N)
% Функция построения сравнительного графика f(x)
% и вычисленных значений интерполяционных кубических сплайнов

% Входные параметры:
% a - левый конец отрезка интерполяции,
% b - правый конец отрезка интерполяции,
% N - количество отрезков разбиения отрезка

% 1 Создаем новое окно для графика и подписываем оси
figure; 
xlabel('x'); 
ylabel('y'); 
hold on; 
grid on;

% 2 Печатаем узловые точки:
X = linspace(a, b, N+1); % N+1 узловых точек
Y = f(X);
plot (X, Y, 'ro');

% 3 Вычисляем сплайны и находим значения в 10000 точек отрезка:
XI = linspace(a, b, 10000); % 10000 расчетных точек
YI = spline(X, Y, XI);
plot (XI, YI, 'b');

% 4 Печатаем график функции:
Y = f(XI);
plot(XI, Y, 'r--');


% 5 Подписываем легенду
title('Интерполяция кубическими сплайнами', 'FontName', 'Courier');
h1 = legend('Узловые точки', 'Кубические сплайны', 'Функция');
set(h1, 'FontName', 'Courier');

% 6 Выставляем более-менее приемлемый масштаб:
axis([a b min(Y)-0.2 max(Y)+0.2]) 

end