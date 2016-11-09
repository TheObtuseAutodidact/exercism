
class Clock:

    def __init__(self, hour, minute):
        self.hour = format(hour, '02d')
        self.minute = format(minute, '02d')

    def __str__(self):
        return "{}:{}".format(self.hour, self.minute)

    def add(self, num):
        # hours = num / 60
        # minutes = num % 60
        # self.minute += minutes
        # self.hour += hours
        # self.hour %= 24
        # return self
        advance_minute(self.minute, num)
        self.hour += minutes_to_hours(self.minute, num)
        advance_hour(self.hour, num)
        return self

    def advance_hour(self, h_sum, addend):
        h_sum += addend
        h_sum %= 24
        # return  h_sum

    def advance_minute(self, m_sum, addend):
        m_sum += addend
        import pdb; pdb.set_trace()
        m_sum %= 60
        # return minutes

    def minutes_to_hours(self, m_sum, addend):
        m_sum += addend
        hours = m_sum / 60
        return hours
