import numpy as np
import Solver as sl

P = np.matrix([[0.388, 0.147, 0.202, 0.062, 0.14,  0.047],
              [0.107, 0.267, 0.227, 0.12, 0.207, 0.053],
              [0.035, 0.101, 0.188, 0.191, 0.357, 0.067],
              [0.021, 0.039, 0.112, 0.212, 0.431, 0.124],
              [0.009, 0.024, 0.075, 0.123, 0.473, 0.171],
              [0.0,	0.013, 0.041, 0.088, 0.391,	0.312],
              [0.0,	0.008, 0.036, 0.083, 0.364,	0.235],
            ])
P1 = np.matrix([[0.16, 0.09, 0.25, 0.05, 0.03, 0.07],
[0.107, 0.267, 0.227, 0.120, 0.207, 0.053],
[0.035, 0.101, 0.188, 0.191, 0.357, 0.067],
[0.021, 0.039, 0.112, 0.212, 0.431, 0.124],
[0.009, 0.024, 0.075, 0.123, 0.473, 0.171],
[0.000, 0.013, 0.041, 0.088, 0.391, 0.312],
[0.000, 0.008, 0.036, 0.083, 0.364, 0.235]])

P2 = np.matrix([[0.388,0.147,0.202,0.062,0.140,0.047],
[0.107,0.267,0.227,0.120,0.207,0.053],
[0.035,0.101,0.188,0.191,0.357,0.067],
[0.021,0.039,0.112,0.212,0.431,0.124],
[0.009,0.024,0.075,0.123,0.473,0.171],
[0.000,0.013,0.041,0.088,0.391,0.312],
[0.000,0.008,0.036,0.083,0.364,0.235]])

limit = sl.Solver.solveLinearSystem(P)
limit1 = sl.Solver.solveLinearSystem(P1)
limit2 = sl.Solver.solveLinearSystem(P2)

print("difference")
print(limit1 - limit2)





