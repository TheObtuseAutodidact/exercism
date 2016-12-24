package clock

import "fmt"

const testVersion = 4

type Clock struct {
	Hour   int
	Minute int
}

func totalMinCalc(hour, min int) (int, int) {
	hours := min / 60
	minutes := min % 60

	hour += hours
	hour %= 24

	if minutes < 0 {
		minutes += 60
		hour--
	}

	if hour < 0 {
		hour += 24
	}
	return hour, minutes
}

func New(hour, minute int) Clock {
	hour, minute = totalMinCalc(hour, minute)
	return Clock{hour, minute}
}

func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c.Hour, c.Minute)
}

func (c Clock) Add(minutes int) Clock {
	hour, minute := c.Hour, c.Minute
	h, m := totalMinCalc(hour, (minute + minutes))
	c.Hour, c.Minute = h, m
	return c
}
