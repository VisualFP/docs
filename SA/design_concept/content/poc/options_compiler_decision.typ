#import "../../../acronyms.typ": ac

= Compiler Platform Decision

Since VisualFP will rely heavily on the chosen platform, a platform change later
down the road would be expensive.

#ac("GHC") is the only still actively developed compiler platform out of the
considered platforms. But after testing and research, we've found that the
#ac("GHC") #ac("API") is complicated, and not easy enough to integrate within
the limited timeframe available to the #ac("PoC").

This is why VisualFP will implement a custom compiler platform. Given the low
requirements, it could be considered an exaggeration to call such an
implementation a compiler platform, which is why it'll be called an inference
engine from now on.
