while True:
    try:
        t = input()
        if t.isalpha():
            print(t[0], end='')
            print(t[len(t) - 1])
    except:
        break