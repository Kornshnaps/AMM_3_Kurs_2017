function cc = coefMNKhalfDiscreteTrapezia(X, Y, n) 

N = length(X); % Количество узловых точек
syms x; %Определение символьной переменной

c = sym('c', [1 n]); % Определяем массив символьных переменных с1, ..., сn

% 1 Собираем символьный многочлен p:
tmp = 0;
for i = 1:n % от c1 до сn-1
    tmp = tmp + c(i)*x^(i-1); %
end
p = sym(tmp);


% 2 Собираем полудискретную сумму методом трапеций
G = 0;
for i = 1:N-1
    G = G + (Y(i)+Y(i+1))*(X(i+1)-X(i))/2;    
end


% 3 Формируем подынтегральную функцию:
g = sym((G-p)^2);

% 4 Вычисляем определенный интеграл на отрезке [a, b] по указанной
% переменной, отнормировав на длину ab:
F = 1/(X(N)-X(1))* int(g, x, X(1), X(N));

% 5 Производим символьное дифференцирование:
c_diff = sym('c_diff', [1 n]);
for i = 1:n % от c1 до сn-1
    c_diff(i) = diff(F, c(i)); % символьное дифференцирование
end

%c_diff(1)
%c_diff(2)
%c_diff(3)

% 6 Символьно решаем систему линейных алгебраических уравнений
c = solve (c_diff);
% c.c1
% c.c2
% c.c3


% 7 Получаем массив строк с именами всех полей структуры "c":
cname = fieldnames(c);

% 8 Получаем кодержимое каждого поля структуры, обращаясь по имени поля, и
% конвертируем в double, сохраняя в итоговый массив
for i = 1:n % от c1 до сn-1
    %getfield(S, 'field') — возвращает содержимое поля структуры S, что эквивалентно S. field;
    cname_cell = cname(i);
    cc(i) = double(getfield(c, cname_cell{1})); % Фигурные скобки для обращения к содержимому ячейки
end

end