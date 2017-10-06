function D = coefPolyNewton3(X, Y)
% Функция для вычисления коэффициентов полинома Ньютона методом вычисления
% суммы произведений без вычисления таблицы разделенных разностей

D = X * 0;
n = length(X); % Количество узловых точек

for m = 1 : n % Внешний цикл по D(m)
    sum = 0; % Для каждого D(m) в первую очередь обнуляем сумму,
    % а затем считаем произведение и суммируем с суммой:
    for i = 1 : m % Вложенный цикл по Сумме
        pp = Y(i); % Числитель одного из слагаемых
        dd = 1; % Начальное значение знаменателя
        % и вычисляем значенатель:
        for j = 1 : m % Внутренний цикл по Произведению
            if (i ~= j) % Если не равны, иначе знаменатель обнулится
                dd = dd * (X(i) - X(j));
            end            
        end
        sum = sum + pp / dd; % Добавляем к сумме
    end    
    D(m) = sum;    
end

end
