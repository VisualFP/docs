= Design Evaluation Criteria <design-evaluation-criteria>

Since it is difficult to compare designs in a quantitative manner,
the design evaluation process is based on selected code scenarios and a non-quantitative questionnaire.

A survey will be conducted using the questionnaire and example
visualizations for specific code scenarios to get further valuable feedback to
improve initial designs. The survey targets a selected group of students and
some more experienced functional programmers.

The code scenarios and questionnaire questions can be found below.

== Code Scenarios <design_eval_code_scenarios>

These code scenarios were defined to evaluate visualization designs regarding
their simplicity and clarity of the underlying functional concepts.

=== Simple Addition Function

@design_eval_addition has been chosen to evaluate designs for the composition of
a simple function using another function.

#figure(
    ```hs
    addition :: Num a => a -> a -> a
    addition a b = (+) a b
    ```,
    caption: "Addition function for design evaluation"
)<design_eval_addition>

=== Even numbers from 1 to 10

@design_eval_even has been chosen to evaluate designs for list handling.

#figure(
    ```hs
    evenOneToTen :: Integral a => [a]
    evenOneToTen = [x | x <- [1 .. 10], even x]
    ```,
    caption: "Function that returns even numbers between 1 and 10"
)<design_eval_even>

=== Product of Numbers

@design_eval_product has been chosen to evaluate designs for recursive functions.

#figure(
    ```hs
    product :: Num a => [a] -> a
    product [] = 1
    product (n : ns) = (*) n (product ns)
    ```,
    caption: "Product function for design evaluation"
)<design_eval_product>

=== Map Add 5 Function
@design_eval_currying has been chosen to evaluate designs for currying.

#figure(
    ```hs
    mapAdd5 :: Num b => [b] -> [b]
    mapAdd5 = map ((+) 5)
    ```
)<design_eval_currying>

== Evaluation Questionnaire <design_eval_questionnaire>

The survey participants are asked to answer the following questions for every
design proposal:

- Were you able to understand the meaning of the boxes and arrows?
- Do you find the concept nice to look at?
- Could you imagine teaching functional programming using this visualization?
- Could you imagine how the concept scales to more complex expressions?
- Do you have any suggestions for improvement or general comments on the concept?

Additionally, every survey participant can suggest a visualization concept of
their own.

The questionnaire template handed out to survey participants can be found in
@appendix_design_eval_questionnaire.
