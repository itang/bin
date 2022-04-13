# iex

## Usage

    > :observer.start()

    > i(1..5)
    Term
    1..5
    Data type
    Range
    Description
    This is a struct. Structs are maps with a __struct__ key.
    Reference modules
    Range, Map
    Implemented protocols
    Enumerable, IEx.Info, Inspect

    > i([a: 1, b: 2])
    Term
    [a: 1, b: 2]
    Data type
    List
    Description
    This is what is referred to as a "keyword list". A keyword list is a list
    of two-element tuples where the first element of each tuple is an atom.
    Reference modules
    Keyword, List
    Implemented protocols
    Collectable, Enumerable, IEx.Info, Inspect, List.Chars, String.Chars
