#include <glut.h> // ���������� ������������ ���� ��� ������ � OpenGL
// ��� ��������� Visual Studio - ��� ��� ������� ������:
// https://www.youtube.com/watch?v=bIcT61FdG-Y

#include <windows.h>
#include <iostream>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

/*
�������:

�������� ���������, �������� ������: ��� ������� [a, b] - ������ � ����������,
� �������, �� ������� ����� ������� �������� � �����. ���������� ��������� n-�� ������� (n+1 �����),
� ��� ������������� �� ������� [a, b]. � ������� �������� ����� ����������������� ����������
���������� �������� � �������� ������� ������� � ��������.

*/

// ���������� ��������� � ����������:

const int X_COORD = 6;// X - ����������� ] ������
const int Y_COORD = 6;// Y - ����������� ] ���� �������
const float ITERATIONS = 0.00005;// ���������� ������� (��� ������ ��� �����)

int x_off = X_COORD / 2;// ������
int y_off = Y_COORD / 2;// ��� ���������

double a = 0.0; // ������ ������� (�������� � main!!!)
double b = 3.0; // ����� ������� (�������� � main!!!)
int n = 2; // ������� �������� (�������� � main!!!)





// �������, ������� ������������� ��������� (����� �������� �����)
double f(double x) {
	double y = (1-x)/(1+x*x); // ����� �������� ������
	return y;
}

// ������� ���������� ������:
double delta(double y1, double y2) {
	return abs(y1 - y2);
}

// �������� ������� ������������ (����������)
double interpolate2(vector<double> X, vector<double> Y, double xx);

// ��������������� ������� ������������ (+ ������ �������� X � Y) (����������)
double interpolate1(double a, double b, int size, double xx);


// ������� ������ ���� � ����� �� ��������� �������
void drawgrid(float SERIF_OFFSET, float SERIF_DISTANCE) {
	glBegin(GL_LINES);
	//������ �����
	glColor3f(0.0, 0.0, 0.0);

	//������ ������������ ���
	//�����������
	glVertex2f(0.0, Y_COORD / 2);
	glVertex2f(X_COORD, Y_COORD / 2);
	//������� �� �����������
	int p = X_COORD / 2;
	for (int i = X_COORD / 2; i < X_COORD; i += SERIF_DISTANCE, p -= SERIF_DISTANCE) {
		glVertex2f(i, Y_COORD / 2);
		glVertex2f(i, Y_COORD / 2 + SERIF_OFFSET);

		glVertex2f(p, Y_COORD / 2);
		glVertex2f(p, Y_COORD / 2 + SERIF_OFFSET);
	}
	//���������
	int t = Y_COORD / 2;
	glVertex2f(X_COORD / 2, Y_COORD);
	glVertex2f(X_COORD / 2, 0.0);
	//������� �� ���������
	for (int i = Y_COORD / 2; i < Y_COORD; i += SERIF_DISTANCE, t -= SERIF_DISTANCE) {
		glVertex2f(X_COORD / 2, i);
		glVertex2f(Y_COORD / 2 + SERIF_OFFSET, i);

		glVertex2f(X_COORD / 2, t);
		glVertex2f(Y_COORD / 2 + SERIF_OFFSET, t);
	}
	glEnd();
}

// ������� ��������� ������� ������� (��������)
void drawFunc() {
	//������ ������ �������
	glBegin(GL_POINTS);
	double y = 0.0;
	glColor3f(0.8, 0.0, 0.8);
	for (double x = a; x < b; x += 0.001) {
		//��������������� ����������
		y = f(x);
		glVertex2d(x_off + x, y_off + y); //�� ������� x_off � y_off!! ��� �������� �� ����!
	}
	glEnd();
}

// ������� ������� ���������� ��������
void drawLagrange() {
	//������ ������ ��������
	glBegin(GL_POINTS);
	double j = 0;
	glColor3f(0.8, 0.8, 0.8);
	for (double x = a; x < b; x += 0.001) {
		//��������������� ����������
		j = interpolate1(a, b, n + 1, x);
		glVertex2d(x_off + x, y_off + j); //�� ������� x_off � y_off!! ��� �������� �� ����!
	}
	glEnd();
}

// ������� ��������� ���� �������� � ����
void display() {
	glClear(GL_COLOR_BUFFER_BIT);
	drawgrid(0.3, 5);
	drawFunc();
	drawLagrange();
	glutSwapBuffers();
	glFlush();
}

// �������� ���������
int main(int argc, char **argv) {
	setlocale(LC_ALL, "rus");

	std::cout << "������������ ����������� ��������" << std::endl;


	// �������� �������� � �������, ��������� ��������� ��� ���������� ������� n (�� n+1 �����):
	n = 10; // ��������� ������� 10 = ����� ����� 10+1
	a = -4.0;
	b = 3.0; // ��������


	glutInit(&argc, argv); // �������������� glut
	glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB); // ���������� 1 ����� � ���� ���� RGB (3 ������������)
	glutInitWindowSize(800, 640); // ������ ������ ����
	glutInitWindowPosition(0, 0);  // � ������� �������� ���� (�������� �� �������� ������ ���� ��������)
	glutCreateWindow("�������������� ������������"); // ������� ���� � ������ "�������������� ������������"
	glClearColor(1.0, 1.0, 1.0, 1.0); // ������ ���� ���� ���� - �����
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	//������ ������������ ���������:
	glOrtho(0.0, X_COORD, 0.0, Y_COORD, -1.0, 1.0); // ������ ������� ������������ �����
	glutDisplayFunc(display); // ������ ������� ������������ ����������� �������
	glutMainLoop();  // � � ����� ����� �������� ���������� � glut
}


// �������� ������� ������������
double interpolate2(vector<double> X, vector<double> Y, double xx) {
	double sum = 0.0; // �����-����������
	for (int i = 0; i < X.size(); i++) {
		double pp = Y[i];
		for (int j = 0; j < X.size(); j++) {
			if (i != j) {
				pp *= (xx - X[j]) / (X[i] - X[j]);
			}
		}
		sum += pp;
	}
	return sum;
}

// ��������������� ������� ������������ (+ ������ �������� X � Y)
double interpolate1(double a, double b, int size, double xx) {
	// �������� � ������� ������� ������� a � b, ����� ��������� (�����) ����� ������� size
	// � �������� xx, ��� �������� ���� y, � ����� ������� f, ��� ������� ��� ��� ������
	vector<double> X(size); // ��������� ������ X (������)
	vector<double> Y(size); // ��������� ������ Y (������)
	double delta = abs(a - b) / (size - 1); // ������� �������� ���������
	X[0] = a; X[size - 1] = b; // ����� � ����� �������

	for (int i = 1; i < size - 1; i++) { // ��������� ������ X
		X[i] = X[i - 1] + delta;
	}

	for (int i = 0; i < size; i++) { // ��������� ������ Y
		Y[i] = f(X[i]);
	}

	// � �������� �������� �������
	return interpolate2(X, Y, xx);
}
