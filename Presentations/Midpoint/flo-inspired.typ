#import "@preview/polylux:0.3.1": *

#polylux-slide[
= Flo inspired
#v(1fr)
- Blocks are distributed on canvas
#v(1fr)
- Connections are made with arrows
#v(1fr)
- Composition of one function at a time
#v(1fr)
- Parameters are defined in separate dialog
#v(1fr)
- Block types are displayed when hovering over a block
#v(1fr)
]

#polylux-slide[
= Simple Addition
#grid(
    columns: 2,
    [
        #v(1fr)
        - Function-block can only have one parameter
        #v(1fr)
        - Currying is shown with :apply blocks that "depend" on their main block
        #v(1fr)
        - Last block of a function (output) can be marked as function result
        #v(1fr)
    ],
    [
        #image("static/flo-inspired-addition.png")
    ]
)
]

#polylux-slide[
= Even One to Ten
#grid(
    columns: 2,
    [
        #v(1fr)
        - Parameter of "even" is auto-filled from list in filter function (symbolized by the color)
        #v(1fr)
        - Output block of "even" is ignored since the function is used as parameter
        #v(1fr)
        - Pre-defined list-construction block for list of numbers in range
        #v(1fr)
    ],
    [
        #image("static/flo-inspired-evenOneToTen.png")
    ]
)
]

#polylux-slide[
= Map-Add-5
#grid(
    columns: 2,
    [
        #v(1fr)
        - Second parameter of plus-function is auto-filled from list in map function
        #v(1fr)
    ],
    [
        #image("static/flo-inspired-mapAdd5.png")
    ]
)
]

#polylux-slide[
= Product
#v(1fr)
- Match-block for pattern matching
- One result per match-case
- Recursion by usage of "product" block in definition of product
#v(1fr)
#image("static/flo-inspired-product.png", height: 65%)
]