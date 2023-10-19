#import "@preview/polylux:0.3.1": *

#set page(paper: "presentation-16-9")
#set text(size: 25pt)

#polylux-slide[
  #align(horizon + center)[
    = Visual FP
    === _Survery Results & Project Status_
  ]
]

#polylux-slide[
#v(1fr)
1. Survey Results
#v(1fr)
2. Project Status
#v(1fr)
3. How to proceed?
#v(1fr)
]

#polylux-slide[
= Survey Results
#v(1fr)
- The survey was intended to help us make a decision into which direction we
  can go forward
#v(1fr)
- The examples were not fully developed & formally correct since we wanted to
  think about those things in the later stages of the project
#v(1fr)
]

#polylux-slide[
= Survey Results
#v(1fr)
- The questionnaire was not up to the expected standard for the final group
  of recipients
#v(1fr)
- As already mentioned, images are not able to convey the full interactivity and
  scope of the ideas
#v(1fr)
]

#polylux-slide[
= Survey Results
/ Conclusion:
#v(1fr)
- None of the proposed concepts are mature enough, so there is no clear winner
#v(1fr)
- It would probably have been better to replace the questionnaire
  with personal discussions
#v(1fr)
]

#polylux-slide[
= Project Status
#v(1fr)
For the SA, we have 14 weeks.
#v(1fr)
$
14 & - 5 "weeks are already gone" \
   & - 5 "for the minimal PoC" \
   & - 2 "to flesh out a design" \
   & - 2 "to make a decision" \
   & = 0
$
#v(1fr)
]

#polylux-slide[
= How to proceed?
#v(1fr)
To make it to the end, we propose to scratch some goals:
#v(1fr)
#pause
- There will not be enough time to think about a powerful type-system that
  supports, e.g., type-classes or algebraic-types. 
#v(1fr)
#pause
- There will be no concept for extensibility
#v(1fr)
#pause
- We will not further think about interoperability with Haskell
#v(1fr)
#pause
$arrow.double.r$ Without these changes, we worry that the time will run out
]

#polylux-slide[
= How to proceed?
#v(1fr)
As immediate next steps, we could:
#v(1fr)
-  Improve one of the existing concepts based on the feedback
   - Some suggestions are already covered, but it wasn't
     conveyed since the format was lacking 
#v(1fr)
-  Think about an entirely different approach:
   - Research in the direction of Lisp
   - Google for another week
#v(1fr)
]