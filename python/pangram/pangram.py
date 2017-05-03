import string

ALPHABET = string.ascii_lowercase

def is_pangram(my_string):
    my_string = my_string.lower()
    for letter in ALPHABET:
        if my_string.count(letter) < 1:
            return False
    return True
