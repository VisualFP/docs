#import "../../../acronyms.typ": ac

= Compiler Platform Decision

GHC is the only one still being actively developed out of the compiler-platforms
we've looked at. Since VisualFP will rely heavily on the chosen platform, it
would make a change later down the road difficult.

From testing and research, we've found the #ac("API") of GHC to be complicated,
and not easy enough to integrate within the limited timeline of the #ac("PoC").

This is why we've chosen to implement a custom compiler platform. Given the low
requirements, one could argue that wouldn't even be a compiler platform, but
instead an inference engine, which we will call it from now on. 
