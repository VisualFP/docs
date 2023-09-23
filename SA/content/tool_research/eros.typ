= Eros

Conal Elliott developed a way to visualize pure values in an interactive and
composable way. He calls this technique "Tangible Functional Programming"
@Elliot_2007. The intention of the technique is to allow non-technical people
to create content based on combinations of pure values. 

At the core of the technique are _tangible values_, which are pure values,
including functions, that can be visualized and composed with other tangible
values through a graphical user interface.

In order to combine such values, a set of algebras is defined that allows to
apply values to each another even if they are nested in functions or tuples.
This is called _deep application_.

Along with the technique, Conal developed an application called Eros that
implements this technique. Eros is particuarly suited to creative people with an
artistic interest.

"Tangible Functional Programming" is a very interesting technique, and
particularly the way Eros visualized pure values can be an inspiration for
VisualFP. Ultimately, we feel like the technique is not well suited for general
purpose functional programming and education. 

