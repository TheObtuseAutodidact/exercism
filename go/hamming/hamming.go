package hamming

import "errors"

const testVersion = 5

func Distance(a, b string) (int, error) {
	var distance int
	if len(a) == len(b) {
		for index, value := range a {
			if string(value) != string(b[index]) {
				distance++
			}
		}
	} else {
		return -1, errors.New("ERROR: string lengths unequal")
	}

	return distance, nil
}
