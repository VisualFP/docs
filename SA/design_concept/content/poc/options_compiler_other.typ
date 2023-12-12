#import "../../../acronyms.typ": *

= Other Haskell Compiler-Platforms

Outside of the ubiquitous GHC, described in @ghc, a few other Haskell
compilers were considered for this project. The most notable ones are:

_Hugs_, which is a compiler that provides an almost complete implementation
of Haskell 98 @hugs-compiler.

Unfortunately, Hugs is is not actively maintained anymore @hugs-compiler,
thus, we didn't take it into further consideration.

The _Haskell Suite_ is a collection of tools and libraries that aim to
implement a complete Haskell compiler @haskell-suite.

The #ac("AST") interpreter is provided on hackage as the package
`haskell-src-exts`
#footnote("https://hackage.haskell.org/package/haskell-src-exts"). After
creating some example programs with it, we've found that the #ac("API") is
quite nice to use.

Unfortunately, the Haskell Suite is also not actively developed anymore, as
it is currently on maintenance support @haskell-suite-maintenance.