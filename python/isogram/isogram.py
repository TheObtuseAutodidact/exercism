import string

def is_isogram(word):
    word = word.lower()
    for char in word:
        if word.count(char) != 1 and char in string.ascii_lowercase:
            return False
    return True
