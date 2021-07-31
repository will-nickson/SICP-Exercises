def sum_squares(x, y, z):
    l = [x, y, z]
    s = sorted(l)
    sum = ((s[-1] * s[-1]) + (s[-2] * s[-2]))
    print(sum)

sum_squares(5, 3, 4)
