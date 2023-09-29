#import "../../../acronyms.typ": *

= GHC <ghc>

For the VisualFP application, we require a compiler for 2 reasons: 

- To develop and build the VisualFP application itself
- To parse and build code from within the VisualFP application 

To build the application itself, GHC
#footnote("https://www.haskell.org/ghc/") is an obvious candidate. It is the
most widely used Haskell compiler, and in combination with build tooling
such as Cabal #footnote("https://www.haskell.org/cabal/") and the language
server HLS #footnote("https://github.com/haskell/haskell-language-server"),
it provides a great development experience.

In order to compile code from within the VisualFP application, GHC seems
like a good fit again. Especially the usage of GHC through Cabal makes
compiling and linking code easy, even from a programmatical perspective.

However, parsing code at runtime is an entirely different use-case. Here the
compiler is used as a platform, as opposed as a tool. GHC supports this
scenario, since GHC itself is written in Haskell.

Unfortunately, we have found GHC to be difficult to use for this use-case.
We have identified a number of reasons for this:

- There isn't enough documentation available to quickly get started with
  using GHC as a platform. Even though there is a great starting point for
  the internals of GHC available at GHC commentary @ghc-commentary, and some
  bloggers such as Stephen Diehl @ghc-pipeline-blogpost took the time to
  write about the GHC API, most of the guides seem to be out-of-date and /
  or incomplete.
- GHC is loaded with features, which is great for when you want to compile
  Haskell code from source, but makes the representation of the #ac("AST")
  more complex than necessary. For example,


  but not so great when you want to parse Haskell code. For
  example, GHC supports a number of language extensions, which are not
  relevant for parsing code. However, these extensions do make the parser
  more complex, and thus more difficult to understand.

Thus, we have decided to use the common GHC toolstack as development
environment and as compiler for the VisualFP application, but to use a
different parser implementation at runtime.

