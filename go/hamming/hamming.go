package hamming

import "errors"

const testVersion = 5

func Distance(a, b string) (int, error) {
	var distance int

	if len(a) != len(b) {
		return -1, errors.New("ERROR: string lengths unequal")
	}

	for index := range a {
		if a[index] != b[index] {
			distance++
		}
	}

	return distance, nil
}
