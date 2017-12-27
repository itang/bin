# semantic version

## Usage

    =: equal
    !=: not equal
    >: greater than
    <: less than
    >=: greater than or equal to
    <=: less than or equal to
    -: literal range. Eg: 1.2 - 1.4.5 is equivalent to >= 1.2, <= 1.4.5
    ~: minor range. Eg: ~1.2.3 is equivalent to >= 1.2.3, < 1.3.0
    ^: major range. Eg: ^1.2.3 is equivalent to >= 1.2.3, < 2.0.0
    [xX*]: wildcard. Eg: 1.2.x is equivalent to >= 1.2.0, < 1.3.0
