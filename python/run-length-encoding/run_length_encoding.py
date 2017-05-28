def prep_encoded_substring(count, char):
    if count == 1:
        return char
    return "{}{}".format(count, char) #char * count

def decode(string):
    solution = []
    for idx in range(len(string)):
        if not string[idx].isdigit() and string[idx-1].isdigit() and string[idx-2].isdigit():
            solution.append(string[idx] * int(string[idx-2] + string[idx-1]))
        if not string[idx].isdigit() and string[idx-1].isdigit() and not string[idx-2].isdigit():
            solution.append(string[idx] * int(string[idx-1]))
        elif not string[idx].isdigit() and not string[idx-1].isdigit():
            solution.append(string[idx])
    return "".join(solution)


def encode(string):
    if not string:
        return ""
    solution = []
    count = 0
    last = ""
    for each in string:
        if each == last or not last:
            last = each
            count += 1
        else:
            solution.append(prep_encoded_substring(count, last))
            last = each
            count = 1
    solution.append(prep_encoded_substring(count, last))
    return "".join(solution)
