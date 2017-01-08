package gigasecond

import "time"

const (
	testVersion = 4
)

var second = time.Second

func AddGigasecond(t time.Time) time.Time {
	gigasecond := second * 1000000000 // one billion
	duration := time.Duration(gigasecond)
	return t.Add(duration)
}
