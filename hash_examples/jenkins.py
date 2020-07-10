def jenkins(s):
    hash = 0
    for i in s:
        hash += ord(i)
        hash += (hash << 10)
        hash ^= (hash >> 6)
    print("After Loop:",hash)
    hash += hash << 3
    hash ^= hash >> 11
    hash += hash << 15
    return hash

print(hex(ord("a")))    
print("Finished Hash:", hex(jenkins("a")))