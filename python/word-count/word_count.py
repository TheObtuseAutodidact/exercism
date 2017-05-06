def word_count(string):
    solution_dict = {}
    words = ""
    for char in string:
        if char.isalnum():
            words += char
        else:
            words += " "
    for word in words.split():

        if word.lower() in solution_dict:
            solution_dict[word.lower()] += 1
        else:
            solution_dict[word.lower()] = 1
    return solution_dict
