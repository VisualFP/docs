#import "../../../acronyms.typ": *

= Compiler Platform <compiler_platform>

A compiler platform is a set of tools that can be used to compile code.

== Requirements

For the VisualFP application, we require a compiler platform for 2 reasons: 

1. Developing and building the VisualFP application itself

   For this use-case, it is important that the compiler platform is easy to
   use and integrates well with other tools such as a build-tool, a package
   manager and a #ac("LSP") server.

2. Parsing and building code from within the VisualFP application 

   Building code from within the VisualFP application is a similar
   requirement as building the application itself. The major differences are
   that interactive tooling is not necessary, but starting the build process
   programatically is.

   However, parsing existing code and representing the state of the
   visual-editor in an #ac("AST") is an entirely different use-case.
   Optimally, the compiler platform would have an easy to use #ac("API") and
   a well-typed #ac("AST") representation.

== Candidates

#v(1em)

/ #ac("GHC") #footnote("https://www.haskell.org/ghc/"):
  The Glasgow Haskell Compiler is the most widely used and supported Haskell
  compiler. In combination with build tooling such as Cabal
  #footnote("https://www.haskell.org/cabal/") or the language server HLS
  #footnote("https://github.com/haskell/haskell-language-server"), it
  provides a great development experience. \
  Unfortunately, even though there is a great starting point for
  the internals of GHC available at GHC commentary @ghc-commentary, and some
  bloggers such as Stephen Diehl @ghc-pipeline-blogpost took the time to
  write about the GHC API, much of the available documentation seems to be
  out-of-date and/or incomplete. \
  Given the large amount of supported features, this is not surprising, but
  it does make it more difficult to use for our use-case of representing a
  visual-editor code snippet in an #ac("AST").

In order to compile code from within the VisualFP application, GHC seems
like a good fit again. Especially the usage of GHC through Cabal makes
compiling and linking code easy, even from a programmatical perspective.

However, parsing code at runtime is an entirely different use-case. Here the
compiler is used as a platform, as opposed as a tool. GHC supports this
scenario, since GHC itself is written in Haskell.

Unfortunately, we have found GHC to be difficult to use for this use-case.
We have identified a number of reasons for this:

- There isn't enough documentation available to quickly get started with
  using GHC as a platform. 
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

