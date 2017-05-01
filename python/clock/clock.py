
class Clock:

    def __init__(self, hour, minute):
        self.minute = ((hour * 60 ) + minute) % (60 * 24)



    def __eq__(self, other):
        if isinstance(other, self.__class__):
            return self.minute == other.minute


    def __str__(self):
        display_hour = format(((self.minute // 60) % 24 ), '02d')
        display_minute = format((self.minute % 60), '02d')
        return "{}:{}".format(display_hour, display_minute)


    def add(self, num):
        self.minute += num
        return self
