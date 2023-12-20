#import "../../../acronyms.typ": ac

= GHCJS <ghcjs>

There are many other Haskell libraries for #ac("UI") implementations, but
many rely on compiling Haskell to JavaScript. This cross-compilation is often
based on GHCJS. GHCJS implements a JS backend for #ac("GHC") and has recently been
merged into the #ac("GHC") repository @ghcjs-merged.

Using GHCJS with an accompanying #ac("UI") library, which would optimally support
#ac("FRP"), could make a lot of sense for an application like VisualFP.  
Since all code would be compiled to JavaScript, it would automatically be
platform-independent without the need for a supporting server infrastructure
other than a way of serving static files.

But GHCJS has merged only recently @ghcjs-merged, and thus its usage poses some
challenges:

- No pre-built binaries are available at the time of writing, meaning the
  complete #ac("GHC") compiler must be built manually.

- While there is some documentation, it doesn't seem to be very comprehensive.

The downsides could be overcome, and it is to be expected that
GHCJS will get better tooling support in the future.

But after writing some samples in GHCJS, it is to be expected that a considerable amount of
time would need to be invested to get GHCJS to work for the #ac("PoC").
