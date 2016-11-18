︠d1087c7f-a1e8-4fa6-9010-2d42fd0738a1︠
k = var('k')
p1 = k/(k+1)
p2 = 1/2 * (1/(k+1))
p3 = 1/2 * k/(k+1)
p4 = 1/(k+1)

p41 = 1/4*p2
p42 = 1/4*p2 + 1/2*p2
p43 = 1/4*p1 + 1/4*p3
p44 = 1/2*p2
p45 = 1/2*p1 + 1/4*p3
p46 = 1/4*p4


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
︡9b7eeecb-36a6-4185-9791-f9cbffec5da2︡{"done":true}︡
︠2802f137-0624-4523-a5c2-74dd5b26681fs︠

print "матрица P"
print P.str(rep_mapping=lambda x : str(x.n(digits=3)))

print "Среднее время до выхода : для 3 го, 4-го и 5-го соответственно"
print T_average

print "Вероятность перехода из среднего класса в высший : для 3 го, 4-го и 5-го соответственно"
print B_for_higher

print "Вероятность перехода из среднего класса в нижний : для 3 го, 4-го и 5-го соответственно"
print B_for_lower
︡b58fad2c-7c1b-4b30-8a93-99153e224009︡{"stdout":"матрица P\n"}︡{"stdout":"[   1.00   0.000   0.000   0.000   0.000   0.000   0.000]\n[  0.000    1.00   0.000   0.000   0.000   0.000   0.000]\n[  0.000   0.000    1.00   0.000   0.000   0.000   0.000]\n[  0.000   0.000   0.000    1.00   0.000   0.000   0.000]\n[ 0.0350   0.101  0.0670  0.0610   0.188   0.191   0.357]\n[ 0.0210  0.0390   0.124  0.0620   0.112   0.212   0.431]\n[0.00900  0.0240   0.171   0.125  0.0750   0.123   0.473]\n"}︡{"stdout":"Среднее время до выхода : для 3 го, 4-го и 5-го соответственно\n"}︡{"stdout":"(3.47224464615938, 3.52005608130561, 3.21325473712057)\n"}︡{"stdout":"Вероятность перехода из среднего класса в высший : для 3 го, 4-го и 5-го соответственно\n"}︡{"stdout":"(0.278993920715788, 0.196897877131991, 0.148278905011232)\n"}︡{"stdout":"Вероятность перехода из среднего класса в нижний : для 3 го, 4-го и 5-го соответственно\n"}︡{"stdout":"(0.721582752365825, 0.804702282170318, 0.852176635928626)\n"}︡{"done":true}︡
︠21e62893-969e-42f3-9e27-1b23fdc00b29︠

︡c79ae928-6ce6-4ea4-9918-9447e3348585︡{"done":true}︡
︠31ff9a70-a76a-417c-a689-195efa1cae2b︠

︡9aab1afb-5056-410c-bf11-57c9c8781e55︡{"done":true}︡
︠666ba64b-07f2-4258-b49c-1519f621a1d5︠

︡7d631f4d-2723-48b5-9b80-92e87cbcbbc9︡
︠a98e26b4-bdaa-4d94-bd43-879da1f74def︠

︡cace74da-2eef-41a9-9a62-963e20037db9︡
︠0a8b89ec-b339-4d61-8c6f-c5472436616c︠

︡52a43930-1182-467a-8aac-b81d9f9df4a6︡
︠a98dd5da-8d81-4f29-b544-b277c2216574s︠

︡06365e9e-5abd-4845-ac89-588fd6b5acb7︡{"done":true}︡
︠2ef148a1-fdc0-422c-ba81-b6f12edff9ca︠

︠b788818b-bc39-4c0f-8e72-54f53093c2e3︠









