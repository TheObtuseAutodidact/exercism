import string

ALPHABET = string.ascii_lowercase

def is_pangram(my_string):
    my_string = my_string.lower()
    for letter in ALPHABET:
        if not letter in my_string:
            return False
    return True
