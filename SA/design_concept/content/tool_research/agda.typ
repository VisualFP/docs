= Agda

Even though Agda
#footnote("https://wiki.portal.chalmers.se/agda/pmwiki.php") isn't a visual
programming environment, the tools for it have been designed in an
interactive way and are of interest for this project.

The basis for these tools is a language-server, which in combination with
the powerful checker and editor extensions, allows to not only verify the
correctness of the code, but also to check incomplete programs. Additional
context, such as checker errors or incomplete expressions, is then provided
in a separate window inside the editor. 

Using this tooling it is, for example, possible to insert a hole in the
code, called a _metavariable_, which the checker will detect and display
alongside the expected type in the context-window, as shown below.

#figure(
  image("../../static/agda-context-window.png", width: 70%),
  caption: [Screenshot of Agda context-window after inserting a hole in an expression using the `?` sign]
)

The agda language server is also able to provide automatic case-splitting
for pattern matching. During this process, the checker will determine which
cases are even possible, and present only those to the user. Thus, the user
is not only freed from having to remember and type out all cases, but also
from having to determine which cases are even possible.

Additionally, the langage-server offers to normalize or deduce any given
expression, inside the context of the currently loaded code. The checker is
also utilized for syntax highlighting, providing the user with semantical
value in form of coloring. 

