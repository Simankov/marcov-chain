import numpy as np
class Solver:
    @staticmethod
    def solveLinearSystem(a):
        n = a.shape[0]
        a_transposed = a.transpose()
        c = np.append(a_transposed, [[1, 1, 1, 1, 1, 1, 1]], axis=0)
        b = np.empty(n)
        b[n - 1] = 1.0
        d = c - np.identity(n)
        d[n - 1, n - 1] = 1.0
        e = np.linalg.solve(d, b)
        print (e)
        print sum(e)
        return e
