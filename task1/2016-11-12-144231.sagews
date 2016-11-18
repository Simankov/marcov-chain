
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

b3_4 = plot(B[0,0], (k, 0, 1000), thickness=1, color='green', title='A : aa-aa')
b5 = plot(B[2,0], (k, 0, 1000), thickness=1, color='red', title='A : aa-aa')
b2 = plot(B[3,0], (k, 0, 1000), thickness=1, color='blue', title='A : aa-aa')

b2_text = text('from aa-ab state', (400, 0.4))
b5_text = text('from ab-bb state', (100, 0.1),color='red')
b3_text = text('from aa-bb and ab-ab state', (400, 0.1),color='green')

b3_4_bb = plot(B[0,1], (k, 0, 1000), thickness=1, color='green', title='B :bb-bb')
b5_bb = plot(B[2,1], (k, 0, 1000), thickness=1, color='red', title='bb-bb')
b2_bb = plot(B[3,1], (k, 0, 1000), thickness=1, color='blue', title='bb-bb')
b2b_text = text('from aa-ab state', (400, 0.4))
b5b_text = text('from ab-bb state', (400, 0.9),color='red')
b3b_text = text('from aa-bb and ab-ab state', (800, 0.9),color='green')
b2 + b5 + b3_4 + b2_text + b5_text + b3_text
b2_bb + b5_bb + b3_4_bb + b2b_text + b5b_text + b3b_text
