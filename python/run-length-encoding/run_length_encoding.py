import re

def prep_encoded_substring(count, char):
    if count == 1:
        return char
    return "{}{}".format(count, char) #char * count

def decode(string):
    solution_string = ""
    # numbers = map(int, re.findall('\d+', string))
    # for each in numbers:
    #     string.find(each)
    for idx in range(len(string)):
        if not string[idx].isdigit() and string[idx-1].isdigit() and string[idx-2].isdigit():
            solution_string += string[idx] * int(string[idx-2] + string[idx-1])
        if not string[idx].isdigit() and string[idx-1].isdigit() and not string[idx-2].isdigit():
            solution_string += string[idx] * int(string[idx-1])
        elif not string[idx].isdigit() and not string[idx-1].isdigit():
            solution_string += string[idx]
    return solution_string


def encode(string):
    if not string:
        return ""
    solution_string = ""
    count = 0
    last = ""
    for each in string:
        if each == last or not last:
            last = each
            count += 1
        else:
            solution_string += prep_encoded_substring(count, last)
            last = each
            count = 1
    solution_string += prep_encoded_substring(count, last)
    return solution_string
