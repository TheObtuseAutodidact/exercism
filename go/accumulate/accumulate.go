package accumulate

const testVersion = 1

func Accumulate(col []string, f func(string) string) []string {
	var solutionSlice []string
	for _, v := range col {
		solutionSlice = append(solutionSlice, f(v))
	}
	return solutionSlice
}
