def is_leap_year(year):
    """Determines if a year is a leap year"""
    return (year % 400 == 0) or ((year % 4 == 0) and (year % 100 != 0))
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
