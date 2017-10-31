#!/usr/bin/env ng

// go get -u -v neugram.io/ng

import "fmt"
import "os"
import "strconv"

func m(d int) float64 {
    r := float64(60.0) / float64(5000.0)
	return r * float64(d)
}

fmt.Printf("args: %v\n", os.Args)

d := 1000
al := len(os.Args)
//if al >= 3 {
	d = strconv.Atoi(os.Args[2])
//}

mf := m(d)
mi := int(m(d))
md := mf - float64(mi)

if md > 0 {
	fmt.Printf("步行%v米, 需花%v分%.1f秒", d, mi, md * 60)
}else {
	fmt.Printf("步行走%v米, 需花%v分钟", d, mi)
}
