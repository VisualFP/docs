#import "@preview/polylux:0.3.1": *

#set page(paper: "presentation-16-9", margin: (x: 1cm, y: 0.5cm))
#set text(size: 18pt)

#polylux-slide[
  #align(horizon + center)[
    = Visual FP
    === Concept 04
  ]
]

#polylux-slide[
  = Setup
  #v(1fr)
  1. Take an exercise
  #v(1fr)
  2. Solve it using the proposed concept *step by step*, including the
    thinking process \
    (How do we want students to think about programs?)
  #v(1fr)
  3. Compare it to a Haskell Solution
  #v(1fr)
  4. Conclusion
  #v(1fr)
]

#polylux-slide[
  = Exercise
  #v(1fr)
  I've chosen project euler problem 6, as it seems simple to implement using
  just list and numeric operations.

  #v(1fr)
  #box(inset: 1cm, width: 100%, stroke: 1pt, radius: 15%, fill: rgb("e4e5ea"))[
    == Project Euler Problem 6
    The sum of the squares of the first ten natural numbers is,

    $ 1^2 + 2^2 + ... + 10^2 = 385 $

    The square of the sum of the first ten natural numbers is,
    
    $ (1 + 2 + ... + 10)^2 = 55^2 = 3025 $
    
    Hence, the difference between the sum of the squares of the first ten
    natural numbers, and the square of the sum is $3025 - 385 = 2640$.

    Find the difference between the sum of the squares of the first one
    hundred natural numbers and the square of the sum.
  ]
  #v(1fr)
]

#polylux-slide[
  = Mathematical Solution
  #v(1fr)
  $ "projectEuler6"(x) = (sum^x_(i=1) i)^2 - (sum^x_(i=1) i^2) $
  #v(1fr)
  This helped me to get a feel for the problem. It shows that the problem:

  - Consists of 2 parts
  - that share some components such as:
    - Summing of the same sequence
    - Squaring
  #v(1fr)
]

#let element_of_interest(path, width: 130pt) = image(path, width: width) 

#let state(name, number, description, top_right: []) = polylux-slide[
  #block(height: 250pt, width: 100%, align(horizon, image("static/" + str(number) + ".png", width: 620pt)))
  #box(height: 130pt, width: 100%, align(horizon, description))
  #place(top + right, top_right, dx: -1cm, dy: 1cm)
]

#let explanation_step(explanation) = polylux-slide(explanation)

#state([Start], 0, [
  The exercise starts with the function definition.

  I would imagine some kind of type editor to appear first, where the user
  needs to define the type of value he wants to define.

  In this case, the required function has the type `Int -> Int,` which is
  also the type of the first type-hole.
])

#state([], 1, [
  Next, we need to refine the input, since we likely can't solve the exercise
  using a pointless function. The $lambda$ block is colored in red; the
  parameter we can now use is colored in blue.

  _Note:_ I feel like semantic coloring really helps to get a feel for what
  is going on. I also often use the different colors an IDE uses to portray
  different identifiers when I show something to the apprentices, and they
  seem to catch on to colors pretty quickly. E.g., an interface is yellow,
  and since you can't instantiate an interface, you 'can't `new` anything in
  yellow'.
], top_right: element_of_interest("static/lambda.png", width: 130pt))

#explanation_step[
  #v(1fr)
  Some thoughts before we proceed:
  #v(1fr)
  - We know that the goal is to calculate two types of sums.
  #v(1fr)
  - And we know that both sums have some components in common:
    - The sequence of numbers ($1,2,3,...$)
    - A square operation
  #v(1fr)
  - So we'll solve these problems first.
  #v(1fr)
  _Note:_ I could also have solved these parts as separate definitions, but
  in this case, I wanted to push the concept and see what happens when we
  build complex expressions.
  #v(1fr)
]

#state([], 2, [
  To define the sequence of numbers and use it in multiple expressions, a
  `let` expression comes in handy. I would suggest that after a `let`
  expression has been placed, a type editor comes up similar to the one used
  to define the function. In this case, `[Int]` has been chosen as the
  required type.

  Below it, the original type-hole appears again, but now we can use the
  newly defined value.

  _Note:_ The `be` part could easily be replaced with a `=` sign, but I
  always thought that a `be` keyword would be more descriptive.
], top_right: element_of_interest("static/let_be_in.png", width: 130pt))

#state([], 3, [
  To define the sequence, we need some kind of value generator. Since we
  can't use the syntactic sugar of Haskell, we'll need to use more basic
  constructs.

  One approach is to use the `iterate` generator to define an infinite
  sequence and then cap it with the `take` function.

  Thus, we'll start the definition by inserting the `take` function into the
  type-hole.
], top_right: element_of_interest("static/take.png"))

#state([], 4, [
  The sequence must be `n` numbers long, so insert the `n` parameter into
  the first type-hole.
], top_right: element_of_interest("static/param_n.png", width: 50pt))

#state([], 5, [
  As already mentioned, the infinite sequence can be created by using the
  `iterate` function, so we'll insert that into the second type-hole of
  `take`.

  The `iterate` function takes two parameters:
  - A function that computes the next values based on the previous
  - A starting value
], top_right: element_of_interest("static/iterate.png"))

#state([], 6, [
  Since our target sequence is ascending, we insert the `plus` function into
  the first type-hole of `iterate` to calculate a value based on a sum of
  the previous value and a constant.
], top_right: element_of_interest("static/plus.png", width: 120pt))

#state([], 7, [
  That constant is `1`.

  The same goes for the starting value of `iterate`, the second type-hole of `iterate`.
], top_right: element_of_interest("static/literal_1.png", width: 40pt))

#state([], 8, [
  Before going into the definition of the sums, we can define another value
  used by both: The square function. Again, this can be solved using a let
  expression, this time of the type `Int -> Int`.

  Without sugar, we need to define the second `let` expression as a
  nested expression to the first `let`. To avoid making it more
  complicated than it needs to be, I assumed we'll find a way to
  combine multiple `let` values into a single expression. (This could be a
  point of discussion later on). 
])

#state([], 9, [
  The 'deduction' system (I know it's not deduction, but I forgot how you
  called it) rolls up the parameters from right to left, but we need to
  parameter to be the first argument of a power function (e.g. `x` in
  `x,y`).

  Thus, we need to refine the value using a $lambda$ block.
])

#state([], 10, [
  Next, we can insert the `pow` function.
], top_right: element_of_interest("static/pow.png", width: 100pt))

#state([], 11, [
  And supply `x` as the first parameter and the constant `2` as the second.
])

#state([], 12, [
  Now, we can proceed to implement the difference of the sums.

  As a first step, we'll insert the `minus` function into the type-hole to
  subtract the two sums.
], top_right: element_of_interest("static/minus.png", width: 100pt))

#state([], 13, [
  The first sum is the square of the sum of the sequence, so we'll insert
  the `pow2` function into the first type-hole.
], top_right: element_of_interest("static/pow2_param.png", width: 70pt))

#state([], 14, [
  Then, the `sum` function.
], top_right: element_of_interest("static/sum.png", width: 100pt))

#state([], 15, [
  Then, supply the `ns` captured by the first `let` expression.

  _Note:_ This part seemed very intuitive.
], top_right: element_of_interest("static/ns_param.png", width: 50pt))

#state([], 16, [
  The second sum is the sum of the squared values. So we'll begin with the
  `sum` function.
], top_right: element_of_interest("static/sum.png", width: 100pt))

#state([], 17, [
  Next, we need to transform all values in the sequence into their squared
  value. This is done using the common `map` function.
], top_right: element_of_interest("static/map.png", width: 120pt))

#state([], 18, [
  Then, we can insert the `ns` value from the first `let` expression.
], top_right: element_of_interest("static/ns_param.png", width: 50pt))

#state([], 19, [
  And finally the previously defined `pow2` function fits perfectly into the
  first hole to complete the exercise.
], top_right: element_of_interest("static/pow2_param.png", width: 70pt))

#polylux-slide[
  = Haskell Solution
  #v(1fr)
  We can do the same exercises in Haskell. By using the syntactic sugar to
  the fullest, we might end up with something like this:
  #v(1fr)
  ```hs
  projectEuler6 :: Int -> Int
  projectEuler6 n = squareOfSum - sumOfSquares
    where
      squareOfSum = sum [1..n] ^ 2
      sumOfSquares = sum [ x^2 | x <- [1..n] ]
  ```
  #v(1fr)
  I think that the Haskell solution is much more readable, but I
  am also used to text-based programming.
  #v(1fr)
  Additionally, we could add the same sugar into VisualFP to come to a
  similar result, but I guess we would then miss the point of being a
  teaching tool.
  #v(1fr)
]

#polylux-slide[
  = Haskell Solution
  #v(1fr)
  A more direct comparison would be if we would compare the result with a
  Haskell program that does not make extensive use of syntactic sugar.

  A more direct comparison could be made with e.g. this Haskell program:
  #v(1fr)
  ```hs
  projectEuler6 :: Int -> Int
  projectEuler6 n =
    let ns = take n (iterate (+1) 1)
        pow2 = (\x -> x^2)
        in (pow2 (sum ns)) - (sum (map pow2 ns))
  ```
  #v(1fr)
  Compared to this program, I feel like the proposed concept doesn't look
  too bad.
  #v(1fr)
]

#polylux-slide[
  = Conclusion
  #v(1fr)
  While portraying the concept, I noticed the following things:
  #v(1fr)
  - The concept guides the user through the process of defining a function \
    (it somewhat follows the _'function design recipe'_) 
  #v(1fr)
  - The concept is not too verbose, or at least doesn't add much more
    verbosity compared to Haskell
  #v(1fr)
  - It may be hard to define functions without the possibility of 'playing
    with them' while defining them, as you would in Haskell using GHCi. \
    We could replicate this experience using something like using a 'try-me'
    button.
  #v(1fr)
  - We need to carefully choose which 'sugar' we want to add: Too much and
    we make it too complicated, too little and it gets too verbose.
  #v(1fr)
]

