package gigasecond

import "time"

const (
	testVersion = 4
	gigasecond  = time.Duration(time.Second * 1000000000)
)

func AddGigasecond(t time.Time) time.Time {
	return t.Add(gigasecond)
}
