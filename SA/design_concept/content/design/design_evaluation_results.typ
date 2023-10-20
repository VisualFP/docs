#import "../../../style.typ": include_section

= Design Evaluation
This section documents all answers received from the design evaluation questionnaires and the conclusions drawn from them.

#include_section("design_concept/content/design/questionnaire_answers.typ", heading_increase: 2)

== Design Decision <design_decision>
The received questionnaire answers don't really bring forward a clear winner.
All of the design concepts did get a fair amount of criticism.

However, it is clear that the Flo-inspired design received the most negative feedback.
While this concept keeps blocks very small due to blocks being connect through arrows, it looks overloaded pretty quickly.
In part, this is due to the type-annotations which on the questionnaire images are visible for every block (these are only supposed to be visible when hovering over a block), but the main reason is the currying-visualization.
By trying to visualize currying, the amount of blocks grows with every additional function parameter, leading to a high total number of blocks.
This could be improved by displaying functions as one block with multiple parameters, giving up the visualization of currying.
As suggested by Rafael Das Gupta, it would also be an option to offer the user possibility to activate/deactivate currying in the function editor.

// TODO: write conclusion on Scratch-inspired and Haskell Function-Notation inspired designs