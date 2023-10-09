= Design Evaluation Criteria

The following code scenarios were defined to evaluate visualization designs
regarding their simplicity and clarity of the underlying functional
concepts. The decision for which design is worth pursuing further will be
made based on how well a design is able to represent these scenarios.

Unfortunately, it isn't possible to compare 'how well' a design represents
the scenarios in a quantitative fashion. Any chosen metric would necessarily
be subjective.

Thus, the the decision will be based on the opinions of the authors, as well
as opinions from more experienced functional programmers which are shown at
/*TODO: Insert reference */.

== Simple Addition Function
@design_eval_addition has been chosen to evalute designs for the composition of a simple function, using another function.

#figure(
    ```hs
    addition :: Num a => a -> a -> a
    addition a b = (+) a b
    ```,
    caption: "Addition function for design evaluation"
)<design_eval_addition>

== Even numbers from 1 to 10
@design_eval_even has been chosen to evalute designs for list handling.

#figure(
    ```hs
    evenOneToTen :: Integral a => [a]
    evenOneToTen = [x | x <- [1 .. 10], even x]
    ```,
    caption: "Function that returns even numbers between 1 and 10"
)<design_eval_even>

== Product of Numbers
@design_eval_product has been chosen to evalute designs for recursive functions.

#figure(
    ```hs
    product :: Num a => [a] -> a
    product [] = 1
    product (n : ns) = (*) n (product ns)
    ```,
    caption: "Product function for design evaluation"
)<design_eval_product>

== Function to count words
@design_eval_word_count has been chosen to evalute designs for more complex functions using higher-order functions.

#figure(
    ```hs
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
    ```,
    caption: "Word count function for design evaluation"
)<design_eval_word_count>

== Function for expression evaluation
@design_eval_expr_eval has been chosen to evaluate designs for type composition of custom types and functions using them.

#figure(
    ```hs
    data Expr = Val Int
                | Add Expr Expr
                | Mul Expr Expr
    eval :: Expr -> Int
    eval (Val n) = n
    eval (Add x y) = eval x + eval y
    eval (Mul x y) = eval x * eval y
    ```,
    caption: "Eval function for design evaluation"
)<design_eval_expr_eval>