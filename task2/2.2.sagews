

P = matrix([  [1.0, 0, 0, 0, 0,  0, 0],
              [0, 1.0, 0, 0, 0, 0, 0],
              [0.0, 0, 1.0, 0, 0, 0, 0],
              [0.0, 0, 0, 1.0, 0, 0, 0],
              [0.035, 0.101, 0.067, 0.061, 0.188, 0.191, 0.357],
              [0.021, 0.039, 0.124, 0.062, 0.112, 0.212, 0.431],
              [0.009, 0.024, 0.171, 0.125, 0.075, 0.123, 0.473]])

Q = P.submatrix(4,4,3,3)
R = P.submatrix(4,0,3,4)
I = matrix.identity(3)
N = (I-Q).inverse()
B = N*R
T_average = sum(N.columns())
B_for_higher = sum(B.submatrix(0,0,3,2).columns())
B_for_lower = sum(B.submatrix(0,2,3,2).columns())

print "матрица P"
print P.str(rep_mapping=lambda x : str(x.n(digits=3)))

print "Среднее время до выхода : для 3 го, 4-го и 5-го соответственно"
print T_average

print "Вероятность перехода из среднего класса в высший : для 3 го, 4-го и 5-го соответственно"
print B_for_higher

print "Вероятность перехода из среднего класса в нижний : для 3 го, 4-го и 5-го соответственно"
print B_for_lower
