package sicp

func queens(col, size int) (results [][]int) {
	if size == 0 {
		return
	}
	if col == 0 {
		return [][]int{[]int{}}
	}
	check := func(row int, positions []int) (ok bool) {
		for i, val := range positions {
			if val == row || row == val+(i+1) || row == val-(i+1) {
				return false
			}
		}
		return true
	}
	rs := queens(col-1, size)
	for i := 0; i < size; i++ {
		for _, r := range rs {
			if check(i, r) {
				results = append(results, append([]int{i}, r...))
			}
		}
	}
	return
}
