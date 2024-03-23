t = input()
result = ''

for i in t:
    if i.islower():
        result += i.upper()
    else:
        result += i.lower()

print(result)