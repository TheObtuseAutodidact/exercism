def hey(what):
    what = what.strip()
    if not what:
        return 'Fine. Be that way!'
    elif what.upper() == what and what.upper() != what.lower():
        return 'Whoa, chill out!'
    elif what[-1] == '?':
        return "Sure."
    else:
        return 'Whatever.'
