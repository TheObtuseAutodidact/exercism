def distance(string1, string2):
    if len(string1) != len(string2):
        raise ValueError
    pairs = list(zip(string1, string2))
    return len([True for pair in pairs if pair[0] != pair[1]])
