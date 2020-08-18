
def djb2(s):
    hash = 5381
    for x in s:
        hash = ((hash << 5) + hash) + ord(x)
    return hash & 0xFFFFFFFF


test1 = "abcd"
test2 = "defg"
test3 = "hijk"
test4 = "lmno"

print("test 1:", test1, hex(djb2(test1)))

print("test 2:", test2, hex(djb2(test2)))

print("test 3:", test3, hex(djb2(test3)))

print("test 4:", test4,hex(djb2(test4)))
