#!/usr/bin/env ng

import "fmt"
import "os"
import "strconv"

func m(d int) float64 {
    r := float64(60.0) / float64(5000.0)
	return r * float64(d)
}

fmt.Printf("args: %v\n", os.Args)
d := strconv.Atoi(os.Args[2])

fmt.Printf("走%v米, 需花分钟数: %6.2v", d, m(d))

