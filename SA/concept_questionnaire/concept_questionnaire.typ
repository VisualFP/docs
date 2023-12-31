#import "../style.typ": *
#show heading.where(level: 1): it => { text(it, size: 1.3em); v(2em); }
#set page(footer: sa_footer((authors-short: [L. Streckeisen, J. Flepp])))
#set text(size: 1.2em)

#let concept(data) = [
  #set page(
    margin: (bottom: 2cm, top: 1cm, left: 1cm, right: 1cm))

  #let scenario(title, content) = block(
      inset: 8pt,
      radius: 6pt,
      width: 100%,
      stroke: .5pt,
      height: 7cm)[
    === #title
    #line(length: 100%, stroke: .5pt)
    #align(center + horizon, content)
  ]

  = #data.title
  #v(-2em)

  #let gutter = .5cm
  #columns(2, gutter: gutter)[
    #scenario("Simple Addition Function")[
      #data.simple_addition
    ]
    #colbreak()
    #scenario("Even Numbers from 1 to 10")[
      #data.even_one_to_ten
    ]
  ]
  #v(gutter)
  #v(-1em)
  #columns(2, gutter: gutter)[
    #scenario("Product of Numbers")[
      #data.product_of_numbers
    ]
    #colbreak()
    #scenario("Map Add 5 Function")[
      #data.map_add_5_function
    ]
  ]

  #let question(text) = [
    #v(.7em)
    #text

    #box(width: 1fr, repeat[.])
  ]

  #if data.show-questions [
    #question("Were you able to understand the meaning of the boxes and arrows?")
    #question("Do you find the concept nice to look at?")
    #question("Could you imagine teaching functional programming using this vizualization?")
    #question("Could you imagine how the concept scales to more complex expressions?")
    #question("Do you have any suggestions for improvement or general comments on the concept?")
  ]
]

= VisualFP Concept Questionnaire

Hi there,

In the context of our SA, we are currently searching for a new way to
visualize functional programming concepts. Before we start to flesh out our
ideas, we would like to get some feedback on a few visualization concepts we
came up with. We'll then decide which one we'll develop further based on
the received feedback.

In the end, we will have designed a concept, along with a proof of concept
of some of its functionality, that fullfills the following criteria:

1. It can be used to teach functional programming concepts
2. It is able to visualize Haskell code

On the next page you'll find a few Haskell snippets that we prepared as
example scenarios. Then we used the concepts to visualize the scenarios, and
added a few questions at the bottom of each. It would be great if you could
take a few minutes to answer them.

Please note that:

- These concept are in early stages of development, so there can be bugs and
  inconsistencies in the examples. If you find any, feel free to point them
  out.
- We've consciously decided to not give more textual explanations of the
  concepts, as we want to see how well they can stand on their own.
- Some visualizations barely fit into the boxes. We regard this as a
  downside of these concepts, since this indicates that they don't scale
  well. We tried to provide high resultion images though, so you should be
  able to zoom in to see the details.

Thank you very much for your time!

#v(1em)
Lukas Streckeisen & Jann Flepp

#pagebreak()

#concept((
  title: "Scenarios",
  show-questions: false,
  simple_addition: [
    ```haskell
    addition :: Num a => a -> a -> a
    addition a b = (+) a b
    ```
  ],
  even_one_to_ten: [
    ```haskell
    evenOneToTen :: Integral a => [a]
    evenOneToTen = filter even
      (takeWhile
        ((<= 10))
        (iterate (+1) 1))
    ```
  ],
  product_of_numbers: [
    ```haskell
    product :: Num a => [a] -> a
    product [] = 1
    product (n : ns) = (*) n (product ns)
    ```
  ],
  map_add_5_function: [
    ```haskell
    mapAdd5 :: Num a => [a] -> [a]
    mapAdd5 = map (+ 5)
    ```
  ]
))

#concept((
  title: "Flo inspired",
  show-questions: true,
  simple_addition: [
    #image("static/flo-inspired-addition.png", width: 80%)
  ],
  even_one_to_ten: [
    #image("static/flo-inspired-evenOneToTen.png", width: 80%)
  ],
  product_of_numbers: [
    #image("static/flo-inspired-product.png", width: 105%)
  ],
  map_add_5_function: [
    #image("static/flo-inspired-mapAdd5.png", width: 80%)
  ]
))

#concept((
  title: "Scratch inspired",
  show-questions: true,
  simple_addition: [
    #set text(font: "Ubuntu")
    #image("static/scratch_addition.svg", width: 60%)
  ],
  even_one_to_ten: [
    #set text(font: "Ubuntu")
    #image("static/scratch_evenOneToTen.svg")
  ],
  product_of_numbers: [
    #set text(font: "Ubuntu")
    #image("static/scratch_product.svg", width: 99%)
  ],
  map_add_5_function: [
    #set text(font: "Ubuntu")
    #image("static/scratch_mapAdd5.svg", width: 50%)
  ]
))

#concept((
  title: "Haskell Function-Notation inspired",
  show-questions: true,
  simple_addition: [
    #image("static/funcnotation_addition.png", height: 40%)
  ],
  even_one_to_ten: [
    #image("static/funcnotation_evenOneToTen.png", width: 105%)
  ],
  product_of_numbers: [
    #image("static/funcnotation_product.png", height: 85%)
  ],
  map_add_5_function: [
    #set text(font: "Ubuntu")
    #image("static/funcnotation_mapAdd5.png", width: 75%)
  ],
  count_words: [
  ]
))

If you have an own idea for a visualization concept, we would be happy to
see it!


