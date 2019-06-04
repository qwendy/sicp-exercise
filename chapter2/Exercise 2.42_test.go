package sicp

import (
	"fmt"
	"testing"
)

func Test_queens(t *testing.T) {
	gotResults := queens(8, 8)
	fmt.Println(gotResults)
}
