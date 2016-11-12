︠d1087c7f-a1e8-4fa6-9010-2d42fd0738a1s︠
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
P = matrix([[1,0,0,0,0,0],[0,1,0,0,0,0],[0,0,0,1,0,0],[p41,p46.simplify_full(),p43.simplify_full(),p44.simplify_full(),p45.simplify_full(),p42.simplify_full()],[0,1/2*(1/(k+1)),0,1/2*(1/(k+1)),k/(k+1),0],[1/4,0,0,1/4,0,1/2]])
Q = P.submatrix(2,2,4,4)
R = P.submatrix(2,0,4,2)
I = matrix.identity(4)
N = (I-Q).inverse()
N = N.apply_map(lambda x: x.simplify_full())
B = N*R
T_average = sum(N.columns()).apply_map(lambda x: x.simplify_full())
︡62e601fd-16a3-404a-ae50-a87c3e35e2f7︡{"done":true}︡
︠2802f137-0624-4523-a5c2-74dd5b26681f︠

︡96864bd6-a005-4fb1-b61d-899f65842458︡
︠588ebc9b-cef6-4496-b931-38809b810146s︠
print "N"
print N
print "P"
print P
print "T_average"
print T_average
print "R"
print R
print "B"
print B.apply_map(lambda x: x.simplify_full() )
︡ffc94b9b-9967-42eb-a4ea-c99b18dcf34b︡{"stdout":"N\n"}︡{"stdout":"[         (11*k + 9)/(5*k + 9)          16*(k + 1)/(5*k + 9)        10*(k^2 + k)/(5*k + 9)                  12/(5*k + 9)]\n[                6*k/(5*k + 9)          16*(k + 1)/(5*k + 9)        10*(k^2 + k)/(5*k + 9)                  12/(5*k + 9)]\n[                3*k/(5*k + 9)           8*(k + 1)/(5*k + 9) (10*k^2 + 19*k + 9)/(5*k + 9)                   6/(5*k + 9)]\n[                3*k/(5*k + 9)           8*(k + 1)/(5*k + 9)         5*(k^2 + k)/(5*k + 9)        2*(5*k + 12)/(5*k + 9)]\n"}︡{"stdout":"P\n"}︡{"stdout":"[            1             0             0             0             0             0]\n[            0             1             0             0             0             0]\n[            0             0             0             1             0             0]\n[  1/8/(k + 1)   1/4/(k + 1) 3/8*k/(k + 1)   1/4/(k + 1) 5/8*k/(k + 1)   3/8/(k + 1)]\n[            0   1/2/(k + 1)             0   1/2/(k + 1)     k/(k + 1)             0]\n[          1/4             0             0           1/4             0           1/2]\n"}︡{"stdout":"T_average\n"}︡{"stdout":"((10*k^2 + 37*k + 37)/(5*k + 9), 2*(5*k^2 + 16*k + 14)/(5*k + 9), (10*k^2 + 30*k + 23)/(5*k + 9), (5*k^2 + 26*k + 32)/(5*k + 9))\n"}︡{"stdout":"R\n"}︡{"stdout":"[          0           0]\n[1/8/(k + 1) 1/4/(k + 1)]\n[          0 1/2/(k + 1)]\n[        1/4           0]\n"}︡{"stdout":"B\n"}︡{"stdout":"[              5/(5*k + 9)       (5*k + 4)/(5*k + 9)]\n[              5/(5*k + 9)       (5*k + 4)/(5*k + 9)]\n[            5/2/(5*k + 9) 1/2*(10*k + 13)/(5*k + 9)]\n[ 1/2*(5*k + 14)/(5*k + 9)   1/2*(5*k + 4)/(5*k + 9)]\n"}︡{"done":true}︡
︠21e62893-969e-42f3-9e27-1b23fdc00b29s︠
#plotting
t3 = plot(T_average[0], (k, 0, 100), thickness=1, color='green',title = 'average time to die in aa-aa or bb-bb')
t2_text = text('from aa-ab state', (80, 100))

t5_text = text('from ab-bb state', (90, 150),color='red')
t3_text = text('from aa-bb state', (100, 170),color='green')
t4_text = text('from ab-ab state', (110, 190),color='black')


t4 = plot(T_average[1], (k, 0, 100), thickness=1, color='black')
t5 = plot(T_average[2], (k, 0, 100), thickness=1, color='red')
t2 = plot(T_average[3], (k, 0, 100), thickness=1, color='blue')
t2 + t3 + t5 + t2 + t2_text + t3_text + t5_text + t4_text
︡827f4d81-5a0a-46bc-90eb-5611b628b1d9︡{"file":{"filename":"/projects/2334d8f5-f5a6-4d56-8fea-0211ab3117ad/.sage/temp/compute1-us/13162/tmp_tIJaEw.svg","show":true,"text":null,"uuid":"25df64dc-f8cd-4e8e-94ed-8e2c9f13e232"},"once":false}︡{"done":true}︡
︠c7bae849-a454-4045-bae6-7b7a9c0743b5s︠
b3_4 = plot(B[0,0], (k, 0, 1000), thickness=1, color='green', title='A : aa-aa')
b5 = plot(B[2,0], (k, 0, 1000), thickness=1, color='red', title='A : aa-aa')
b2 = plot(B[3,0], (k, 0, 1000), thickness=1, color='blue', title='A : aa-aa')

b2_text = text('from aa-ab state', (400, 0.4))
b5_text = text('from ab-bb state', (100, 0.1),color='red')
b3_text = text('from aa-bb and ab-ab state', (400, 0.1),color='green')


︡9aab1afb-5056-410c-bf11-57c9c8781e55︡{"done":true}︡
︠dbe81791-831f-4342-8b2a-efa128cd124es︠
b3_4_bb = plot(B[0,1], (k, 0, 1000), thickness=1, color='green', title='B :bb-bb')
b5_bb = plot(B[2,1], (k, 0, 1000), thickness=1, color='red', title='bb-bb')
b2_bb = plot(B[3,1], (k, 0, 1000), thickness=1, color='blue', title='bb-bb')
b2b_text = text('from aa-ab state', (400, 0.4))
b5b_text = text('from ab-bb state', (400, 0.9),color='red')
b3b_text = text('from aa-bb and ab-ab state', (800, 0.9),color='green')
b2 + b5 + b3_4 + b2_text + b5_text + b3_text
b2_bb + b5_bb + b3_4_bb + b2b_text + b5b_text + b3b_text
︡bca41d82-c508-48b9-a33b-4fc71fb97282︡{"file":{"filename":"/projects/2334d8f5-f5a6-4d56-8fea-0211ab3117ad/.sage/temp/compute1-us/13162/tmp_l6c144.svg","show":true,"text":null,"uuid":"e95e2299-4508-4aaa-8400-b90225b2ea8a"},"once":false}︡{"file":{"filename":"/projects/2334d8f5-f5a6-4d56-8fea-0211ab3117ad/.sage/temp/compute1-us/13162/tmp_PqRTdD.svg","show":true,"text":null,"uuid":"1ecab86a-cbd9-4496-b3da-fc49342f75fd"},"once":false}︡{"done":true}︡
︠2ef148a1-fdc0-422c-ba81-b6f12edff9ca︠

︠b788818b-bc39-4c0f-8e72-54f53093c2e3︠









