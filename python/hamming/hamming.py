def distance(string1, string2):
    if len(string1) != len(string2):
        raise ValueError
    count = 0
    for idx in range(len(string1)):
        if string1[idx] != string2[idx]:
            count += 1
    return count