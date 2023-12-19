#import "../../../acronyms.typ": ac

= Compiler Platform Decision

#ac("GHC") is the only still actively developed compiler-platform out of the considered platforms.
Since VisualFP will rely heavily on the chosen platform, a
platform change later down the road would be difficult.

After testing and research, the #ac("GHC") #ac("API") is considered to be too complicated,
and not easy enough to integrate within the limited timeline of the #ac("PoC").

This is why VisualFP will implement a custom compiler platform. Given the low
requirements, to call such an implementation a compiler-platform could be considered an exageration, which is why it'll be called an inference engine from now on.
