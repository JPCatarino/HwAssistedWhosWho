from random import shuffle
import textwrap

example_table = list(range(0,256))
shuffle(example_table)

static_LUT = [6, 14, 184, 53, 82, 58, 98, 48, 210, 110, 171, 190, 22, 75, 170, 244,
              183, 166, 63, 80, 132, 97, 148, 235, 52, 66, 220, 141, 254, 211, 68, 
              230, 12, 72, 41, 94, 165, 61, 199, 2, 156, 120, 100, 252, 176, 17, 226,
              125, 178, 223, 146, 168, 144, 25, 228, 122, 222, 193, 69, 163, 172, 119,
              201, 8, 253, 46, 153, 50, 11, 196, 60, 55, 215, 39, 129, 202, 237, 92,
              142, 118, 224, 145, 95, 213, 83, 225, 167, 77, 34, 49, 137, 3, 93, 7, 216,
              246, 134, 229, 200, 123, 209, 24, 174, 130, 250, 239, 76, 1, 255, 242, 71,
              155, 37, 38, 208, 181, 219, 115, 162, 138, 96, 243, 251, 227, 194, 40, 64, 42, 
              99, 157, 86, 65, 89, 149, 108, 104, 111, 117, 185, 143, 29, 195, 158, 84, 207,
              192, 169, 204, 43, 21, 206, 191, 131, 128, 32, 164, 36, 212, 10, 186, 177, 179,
              27, 47, 57, 221, 159, 139, 0, 203, 18, 136, 147, 74, 151, 173, 247, 116, 85, 56,
              231, 154, 78, 127, 249, 13, 135, 35, 79, 124, 150, 152, 23, 5, 238, 54, 241, 91,
              33, 240, 161, 102, 112, 26, 198, 133, 62, 51, 28, 180, 214, 30, 4, 245, 9, 232, 103,
              73, 106, 217, 88, 15, 81, 45, 31, 188, 44, 234, 19, 218, 67, 175, 197, 109, 160, 187,
              101, 205, 90, 233, 121, 236, 114, 189, 140, 87, 126, 105, 113, 107, 20, 70, 248, 182, 16, 59]

def hash8(message: str, table) -> int:
    hash = len(message) % 256
    for i in message:
        hash = table[hash ^ ord(i)]
    return hash

def hash32(message: str, table) -> int:
    hh = []
    for j in range(4):
        hash = table[(ord(message[0]) + j) % 256]
        for i in message[1:]:
            hash = table[hash ^ ord(i)]
        hh.append(hash)
    return int(str(hh[0]) + str(hh[1]) + str(hh[2]) + str(hh[3]))  

def decimalToBinary(n):
    return bin(n).replace("0b", "0")

def stringToBinary(s):
    ret = ""
    for i in s:
        nv = bin(ord(i)).replace("0b", "")
        while (len(nv) != 8):
            nv = '0' + nv
        ret += nv
    return "".join(ret)

test1 = "abcd"
test2 = "defg"
test3 = "hijk"
test4 = "lmno"

print("test 1:", test1, hex(hash8(test1, static_LUT)))

print("test 2:", test2, hex(hash8(test2, static_LUT)))

print("test 3:", test3, hex(hash8(test3, static_LUT)))

print("test 4:", test4,hex(hash8(test4, static_LUT)))