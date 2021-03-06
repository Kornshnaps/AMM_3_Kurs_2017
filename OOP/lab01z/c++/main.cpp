#include <iostream>
#include <algorithm>
#include <string>
#include <iostream>
#include <ctype.h>

using namespace std;

// Вариант 11
/*
 Задание:
 Создать класс с полями, указанными в индивидуальном задании (табл. 11.2, столб 2).
 Реализовать в классе методы:
- конструктор по умолчанию;
- конструктор перегрузки с параметрами;
- деструктор для освобождения памяти (с сообщением об уничтожении объекта);
- функции обработки данных (1 и 2), указанные в индивидуальном задании (табл. 11.2, столбцы 3 и 4)
- функцию формирования строки информации об объекте.

Вар.11
 1. Комплексное число: действительная (a1) и мнимая (b1) части числа.
 2. Вычислить модуль комплексного числа.
 3. Найти комплексное число, обратное заданному.
*/

// Класс комплексного числа:
class Complex {

private:
    double Re; // Вещественная часть
    double Im; // Мнимая часть

public:
    Complex(){ // Конструктор по умолчанию
        this->Re = 0.0;
        this->Im = 0.0;
    }

    Complex(double Re, double Im){ // Конструктор с параметрами
        this->Re = Re;
        this->Im = Im;
        cout << "Сработал конструктор!" << endl;
    }

    ~Complex(){ // Деструктор
        cout << "Сработал деструктор!" << endl;
    }


    // Метод вычисления модуля комплексного числа:
    double module(){
        return sqrt((this->Re * this->Re) + (this->Im * this->Im));
    }

    // Метод вычисления комплексного числа, обратного заданному:
    Complex inverse(){
        // Вычисляем значенатель, чтобы дважды не считать его в Re и Im
        double znamenatel = (this->Re * this->Re) + (this->Im * this->Im);
        double tmpRe = this->Re / znamenatel; // Вычисляем Re обратного числа
        double tmpIm = - this->Im / znamenatel; // Вычисляем Im обратного числа
        return Complex(tmpRe, tmpIm); // Формируем и возвращаем обратное комплексное число
    }

    // Метод формирования информации об объекте (Комплексном числе):
    void info(){
        std::cout << "(" << this->Re << ((this->Im < 0.0) ? " - i" : " + i") << abs(this->Im) << ")\n";
    }


};

// Основная часть программы:
int main() { // Вариант 11
    setlocale(LC_ALL, "rus");

    double a, b;

    std::cout << "Введите Re: ";
    std::cin >> a;
    std::cout << "Введите Im: ";
    std::cin >> b;

    // 1 Формируем новое комплексное число:
    Complex complex = Complex(a, b);
    // 2 Выводим информацию о числе:
    complex.info();
    // 3 Вычисляем и печатаем модуль комплексного числа:
    std::cout << "Модуль: " << complex.module() << std::endl;
    // 4 Вычисляем и выводим обратное комплексное число:
    Complex invComplex = complex.inverse();
    std::cout << "Обратное комплексное число: "; invComplex.info();
    std::cout << "Модуль обратного числа: " << invComplex.module() << std::endl;

    complex.~Complex();
    invComplex.~Complex();

    return 0;
}