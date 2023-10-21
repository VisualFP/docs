#import "../../../style.typ": include_section

= Design Evaluation
This section documents all answers received from the design evaluation questionnaires and the conclusions drawn from them.

#include_section("design_concept/content/design/questionnaire_answers.typ", heading_increase: 2)

== Design Decision <design_decision>

The received questionnaire answers don't determine a clear winner.
All of the design concepts got a fair amount of valid criticism.

=== Flo-inspired Design

However, it is clear that the Flo-inspired design received the most negative feedback.
While this concept keeps blocks very small due to blocks being connect through arrows, it quickly looks overloaded.
In part, this is due to the type-annotations which on the questionnaire images are visible for every block (these are only supposed to be visible when hovering over a block), but the main reason is the currying-visualization.

By trying to visualize currying, the amount of blocks grows with every additional function parameter, leading to a high total number of blocks.
This could be improved by displaying functions as one block with multiple parameters, giving up the visualization of currying.
As suggested by Rafael Das Gupta, an option could also be to offer the user a possibility to activate/deactivate currying in the function editor.

=== Scratch-inspired Design

The Scratch-inspired design received the most positive feedback, but also
some negative feedback.

The most consistent criticism was about the operator functions being aligned
in the middle, implying that the design accounts for infix application, but
were written in parentheses (e.g. `(+)`), which is the form of normal
function application that doesn't support infix notation. This is a very
valid point, and is something we didn't intend to imply / didn't think about
enough. It should be fairly easy to fix though: Just align the operators to
the left as well.

Another point if critique that was repeated by several participants was that
unapplied parameters are not used correctly and / or inconsistently. It was
e.g. mentioned that using a parameter-value `a` is not allowed in
$eta$-reduced form, which is correct. The key-point here is that these
missing arguments are type-holes portrayed in violet, indicating that they
are unfilled. Unfortunately, this was not clear enough solely based on the
images.

At last, all participants agreed that the design wouldn't scale, as it
requires a lot of horizontal space to grow.

Compared to the other designs, the Scratch-inspired design was praised for
its extesive use of coloring, and as the most easy to understand.

=== Haskell Function-Notation inspired Design

The Haskell function-notation inspired design received the most mixed
feedback.

The one common point of critique was that the design is too overloaded and
difficult to understand, especially for beginners.

But some participants like the design the most, as it is the most similar to
Haskell. Other participants disliked the design the most, probably because
the relationship between the design and Haskell was not clear enough.
