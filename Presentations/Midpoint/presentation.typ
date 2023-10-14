#import "@preview/polylux:0.3.1": *

#set page(paper: "presentation-16-9")
#set text(size: 25pt)

#polylux-slide[
  #align(horizon + center)[
    = Visual FP
    === _Design Decision_
  ]
]

#polylux-slide[
= Outline
#v(1fr)
- Goals
#v(1fr)
- Flo inspired
#v(1fr)
- Scratch inspired
#v(1fr)
- Mehta-drawing inspired
#v(1fr)
- Eros
#v(1fr)
]

#polylux-slide[
= Goals
#v(1fr)
In order:
#v(1fr)
1. Educational tool for FP
#v(1fr)
2. Graphical Development of Haskell code 
#v(1fr)
3. Tool for professional users 
#v(1fr)
]

#include "flo-inspired.typ"

#polylux-slide[
= Scratch inspired
#align(center + horizon,
  image("static/scratch-inspired-01.png", width: 90%))
]

#polylux-slide[
= Scratch inspired
#align(center + horizon,
  image("static/scratch-inspired-02.png", width: 100%))
]

#polylux-slide[
= Scratch inspired
#align(center + horizon,
  image("static/scratch-inspired-03.png", width: 70%))
]

#polylux-slide[
= Scratch inspired
#v(1fr)
```hs
product [] = 1
product (x:xs) = x * product xs
```
#v(1fr)
#image("static/scratch-inspired-04.png", width: 90%)
#v(1fr)
]

#polylux-slide[
= Scratch inspired
#v(1fr)
```hs
filter even (takeWhile (<= 10) (iterate (+ 1) 0))
```
#v(1fr)
#image("static/scratch-inspired-05.png", width: 90%)
#v(1fr)
]

#polylux-slide[
= Mehta-drawing inspired
#align(center + horizon,
  image("static/mehta-drawing.png", width: 50%))
]

#polylux-slide[
= Mehta-drawing inspired
#align(center + horizon,
  image("static/mehta-drawing-inspired-01.png", width: 65%))
]

#polylux-slide[
= Mehta-drawing inspired
#align(center + horizon,
  image("static/mehta-drawing-inspired-02.png", width: 50%))
]

#polylux-slide[
= Eros inspired
#v(1fr)
- _Deep Application_ hides implementation details
#v(1fr)
- _Tangled Values_ make it difficult to navigate
#v(1fr)
- Need for interactive-visualizers compatible with every value is difficult
  to scale to general-purpose programming
#v(1fr)
Like a 'no-code' tool, thought for people to avoid thinking about code
rather than teaching them how to
#v(1fr)
]

#polylux-slide[
= Decision
#v(1fr)
- Design decision based on feedback of students & programmers
#v(1fr)
- Questions:
  - Were you able to determine what the function does?
  - Did you find it easy or difficult to determine the purpose of the function?
  - Do you find the visualization nice to look at?
  - Do you have any suggestions for improvement or general comments on the visualization?
#v(1fr)
]