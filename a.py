from math import sqrt

x1, y1, x2, y2 = [int(a) for a in input().split(" ")]
x_pech, y_pech, r = [int(a) for a in input().split(" ")]

destinations = 0
for i in range(x1, x2+1):
    for k in range(y1, y2+1):
        if sqrt((x_pech - i)**2 + (y_pech - k)**2) <= r:
            destinations += 1

print(destinations)