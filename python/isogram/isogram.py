import string

def is_isogram(word):
    letters = [letter.lower() for letter in word if letter.isalpha()]
    return len(letters) == len(set(letters))
