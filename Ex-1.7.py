def average(x, y):
    return (x + y) / 2

def improve(guess, x):
    return average(guess, (x / guess))

def good_enough(guess, x):
    some = (guess * guess) - x
    absolute = abs(some)
    if absolute < 0.001:
        print("True ", absolute)
        return True
    else:
        print("False ", absolute)
        return False

def sqrt_iter(guess, x):
    if good_enough(guess, x) == True:
        print("Guess is good enough: ", guess)
    else:
        print("Improve: ", guess)
        sqrt_iter(improve(guess, x), x)

sqrt_iter(1, 25)
