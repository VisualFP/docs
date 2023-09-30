#import "../../../acronyms.typ": *

= Compiler Platform <compiler_platform>

A compiler platform is a set of tools that can be used to compile code. For
the VisualFP application we require not only a compiler platform to build
the application itself, but also as a library to compile programs created by
the users in the visual editor. Creating, parsing and compiling an #ac("AST")
programmatically are entirely different use-cases compared to the usual
use-cases of a compiler platform.

The most obvious choice for a Haskell compiler platform is #ac("GHC")
#footnote("https://www.haskell.org/ghc/"). In combination with build tooling
such as Cabal #footnote("https://www.haskell.org/cabal/") and the language
server HLS #footnote("https://github.com/haskell/haskell-language-server"),
it provides a great development experience.

Unfortunately, the usage of #ac("GHC") as a library is not as
straightforward as using it as a compiler.

- Given the large amount of supported features, the #ac("API") is more
  complex than necessary for our use-case of representing a visual-editor
  code snippet in an #ac("AST").

- The #ac("API") documentation is limited. Even though there is a great
  starting point for the internals of GHC available at GHC commentary
  @ghc-commentary, and some bloggers such as Stephen Diehl
  @ghc-pipeline-blogpost took the time to write about the GHC API, much of
  the available documentation seems to be out-of-date, incomplete or
  missing.

The only other compiler platforms for Haskell found during research for this project are Hugs
#footnote("https://www.haskell.org/hugs/") and the
Haskell Language Extensions part of the Haskell Suite
#footnote("https://github.com/haskell-suite"). Both are not actively
maintained anymore @hugs-compiler @haskell-src-ext. 

Thus using the common #ac("GHC") toolstack as development
environment and as compiler for the VisualFP application is the best option. Its usage
that the usage of #ac("GHC") as compiler imposes the project of any great
risk, but in regards of the usage of #ac("GHC") as a library, we are aware
that problems may arise.

