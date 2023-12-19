#import "../../../acronyms.typ": *

= GHC <ghc>

The most obvious choice for a Haskell compiler platform is #ac("GHC")
#footnote("https://www.haskell.org/ghc/"). In combination with build tooling,
such as Cabal #footnote("https://www.haskell.org/cabal/") and the language
server HLS #footnote("https://github.com/haskell/haskell-language-server"),
it provides a great development experience.

Unfortunately, the usage of #ac("GHC") as a library is not as
straightforward as using it as a compiler:

- Given the large amount of supported features, the #ac("API") is more
  complex than necessary for the use-case of representing a visual editor
  code snippet in an #ac("AST").

- The #ac("API") documentation is limited. Even though there is a great
  starting point for the internals of #ac("GHC") available at #ac("GHC") commentary
  @ghc-commentary, and some bloggers such as Stephen Diehl
  @ghc-pipeline-blogpost took the time to write about the #ac("GHC") #ac("API"), much of
  the available documentation seems to be out-of-date, incomplete, or
  missing.
