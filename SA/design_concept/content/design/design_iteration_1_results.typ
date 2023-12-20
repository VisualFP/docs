#import "../../../style.typ": include_section

= Conclusions <iteration-1-conclusion>

Based on the questionnaire answers for the first three designs, which can be
seen in @design_iteration_one_survey_results, it can be concluded that each
design received valid criticism.

== Flo-inspired Design

It is clear that the Flo-inspired design received the most negative feedback.
While this concept keeps blocks small due to blocks being connected through arrows, it quickly looks overloaded.
This is partly because the type annotations on the questionnaire images are visible for every block (these are only supposed to be visible when hovering over a block). Still, the main reason is the currying visualization.

By trying to visualize currying, the amount of blocks grows with every additional function parameter, leading to a high total number of blocks.
This problem could be improved by displaying functions as one block with multiple parameters, giving up the visualization of currying.
As suggested by Rafael Das Gupta, an option could also be to offer the user the possibility to activate/deactivate currying in the function editor.

== Scratch-inspired Design

The Scratch-inspired design received the most positive feedback but also
some negative feedback.

The most consistent criticism was about the operator functions being aligned
in the middle, implying that the design accounts for infix application but
was written in parentheses (e.g., `(+)`), which in Haskell is a form of regular
function application of operators that would support an infix notation. This is
a very valid point and something the design wasn't supposed to imply.
It is fairly easy to fix by aligning the operators to
the left.

Another point of critique repeated by several participants was that
unapplied parameters are not used correctly and/or inconsistently and some felt
that the type holes were unintuitive.

Finally, all participants agreed that the design wouldn't scale, as it
requires a lot of horizontal space to grow.

Compared to the other designs, the Scratch-inspired design was praised for
its extensive use of coloring, and as the most easy to understand.

== Haskell Function Notation-inspired Design

The Haskell function notation-inspired design received the most mixed
feedback.

A common point of critique was that the design was too overloaded and
difficult to understand, especially for beginners.

But some participants like the design the most, as it is the most similar to
Haskell. Other participants disliked the design the most, maybe because
the relationship between the design and Haskell was not clear enough. Still, it
isn't a good sign if one needs to understand Haskell to
understand the concept, as that goes against the goals of VisualFP.
