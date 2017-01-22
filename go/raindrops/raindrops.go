package raindrops

import (
	"strconv"
)

const testVersion = 2

func Convert(i int) string {
	switch {
	case (i%3 == 0) && (i%5 == 0) && (i%7 == 0):
		return "PlingPlangPlong"
	case (i%3 == 0) && (i%5 != 0) && (i%7 == 0):
		return "PlingPlong"
	case (i%3 == 0) && (i%5 == 0) && (i%7 != 0):
		return "PlingPlang"
	case (i%3 != 0) && (i%5 == 0) && (i%7 == 0):
		return "PlangPlong"
	case i%3 == 0:
		return "Pling"
	case i%5 == 0:
		return "Plang"
	case i%7 == 0:
		return "Plong"
	default:
		return strconv.Itoa(i)
	}
}

// The test program has a benchmark too.  How fast does your Convert convert?
