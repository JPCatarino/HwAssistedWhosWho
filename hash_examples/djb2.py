
def djb2(s):
    hash = 5381
    for x in s:
        hash = ((hash << 5) + hash) + ord(x)
    return hash & 0xFFFFFFFF

print(hex(ord("a")))
print(hex(ord("b")))
print(hex(ord("c")))
print(hex(ord("d")))
print(hex(djb2("abcd")))