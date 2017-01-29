package raindrops

import "strconv"

const testVersion = 2

func Convert(i int) string {
	var plingPlangPlong string
	if i%3 == 0 {
		plingPlangPlong += "Pling"
	}
	if i%5 == 0 {
		plingPlangPlong += "Plang"
	}
	if i%7 == 0 {
		plingPlangPlong += "Plong"
	}
	if plingPlangPlong == "" {
		plingPlangPlong += strconv.Itoa(i)
	}
	return plingPlangPlong
}
