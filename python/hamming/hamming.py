def distance(string1, string2):
    if len(string1) != len(string2):
        raise ValueError
    return len([True for (a, b) in zip(string1, string2) if a != b])
