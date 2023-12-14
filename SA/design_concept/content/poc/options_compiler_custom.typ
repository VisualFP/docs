#import "../../../acronyms.typ": *

= Custom Compiler Platform <custom-compiler-platform>

Given that the #ac("PoC") is simple and limited in its features, it might
be an option to skip the use of a compiler platform as a library
altogether:

- It is not necessary for the compiler platform to parse Haskell code. For the
  #ac("PoC"), being able to type-check expressions is sufficient.

- Execution of expressions is optional as well.

So, instead of aligning with a complex #ac("API") of a full-blown compiler
platform, a custom implementation tailored to the specific needs of the
#ac("PoC") could be created.  Given the requirements, the implementation could
even be reduced to just type-checking.
