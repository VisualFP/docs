#import "../style.typ": *
#show heading.where(level: 1): it => { text(it, size: 1.3em); v(2em); }
#set page(footer: sa_footer((authors-short: [L. Streckeisen, J. Flepp])))
#set text(size: 1.2em)

#let concept(data) = [
  #set page(
    margin: (bottom: 2cm, top: 1cm, left: 1cm, right: 1cm))

  #let scenario(title, content, height: 6cm) = block(
      inset: 8pt,
      radius: 6pt,
      width: 100%,
      stroke: .5pt,
      height: height,
      fill: rgb("F7F7F7"))[
    === #title
    #line(length: 100%, stroke: .5pt)
    #content
  ]

  = #data.title
  #v(-1em)

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
  #v(gutter)
  #v(-0.8em)
  #scenario("Count Words", height: 10cm)[
      #data.count_words
  ]
]

#[
= VisualFP Concept Questionare

Hi there,

In the context of our SA, we are currently searching for a new way to
visualize functional programming concepts. Before we start to flesh out our
ideas, we would like to get some feedback on a few concepts we came up with.

In the end, we will
have developed a design concept, along with a proof of concept of it, that
fullfills the following criteria:

1. It can be used to teach functional programming concepts
2. It is able to visualize Haskell code

On the first page you'll find the Haskell equivalent of the concepts we
developed. On the last page you'll find a few questions about the concepts.
It would be great if you could take a few minutes to answer for each
concept.

Thank you very much for your time!

#v(1em)
Lukas Streckeisen & Jann Flepp
]

#pagebreak()

#concept((
  title: "Scenarios",
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
  ],
  count_words: [
    ```haskell
    input :: [String]
    input = ["This is a sentence.", "This is another sentence."]

    wordsPerLine :: [String] -> [[String]]
    wordsPerLine = map words

    wordCountPerLine :: [String] -> [Int]
    wordCountPerLine = map length . wordsPerLine

    totalWordCount :: [String] -> Int
    totalWordCount xs = foldr (+) 0 (wordCountPerLine xs)

    totalWordCountOneLiner :: [String] -> Int
    totalWordCountOneLiner = foldr (+) 0 . map (length . words)
    ```
  ]
))

#pagebreak()

= Questions

#let question(text) = [
  #v(1em)
  #text

  #box(width: 1fr, repeat[.])
]

#let questions = [
  #question("Were you able to understand the meaning of the boxes and arrows?")
  #question("Do you find the concept nice to look at?")
  #question("Could you imagine teaching functional programming using this vizualization?")
  #question("Do you have any suggestions for improvement or general comments on the concept?")
]

== Flo Inspired

#questions

== Scratch Inspired

#questions

