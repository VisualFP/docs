= Design Evaluation Criteria
The following code scenarios were defined to evaluate visualization designs regarding their simplicity and clarity of the underlying functional concepts.

== Simple Addition Function
@design_eval_addition has been chosen to evalute designs for the composition of a simple function, using another function.

#figure(
    ```hs
    addition :: Num a => a -> a -> a
    addition a b = (+) a b
    ```,
    caption: "Addition function for design evaluation"
)<design_eval_addition>

== Filter Function for Lists
@design_eval_filter has been chosen to evalute designs for list comprehension.

#figure(
    ```hs
    filter :: (a -> Bool) -> [a] -> [a]
    filter p xs = [x | x <- xs, p x]
    ```,
    caption: "Filter function for design evaluation"
)<design_eval_filter>

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