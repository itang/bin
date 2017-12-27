# go nil

links:

- [nil在Golang中有什么用？](https://zhuanlan.zhihu.com/p/27382301)

## Examples

    // Do not declare concrete error vars
    func do() error {
        var err *doError // nil of type *doError
        return err // error (*doError, nil)
    }
    func main() {
        err := do() // error (*doError, nil)
        fmt.Println(err == nil) // false
    }

    // Do not return concrete error types：
    func do() *doError {
        return nil // nil of type *doError
    }
    func main() {
        err := do() // nil of type *doError
        fmt.Println(err == nil) // true
    }

    func do() *doError {
        return nil // nil of type *doError
    }
    func wrapDo() error { // error (*doError, nil)
        return do() // nil of type *doError
    }
    func main() {
        err := wrapDo() // error (*doError, nil)
        fmt.Println(err == nil) // false
    }
