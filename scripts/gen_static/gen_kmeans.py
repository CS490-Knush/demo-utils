for i in range(0, 1000000):
    if (i < 1000000/2):
        center = 25
    else:
        center = 50
    x = center + 0.1 * i
    y = center + 0.1 * i
    z = center + 0.1 * i

    #0 1:0.0 2:0.0 3:0.0
    print("%d 1:%f 2:%f 3:%f" % (i, x, y, z))

