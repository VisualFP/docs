= Eros

Conal Elliott developed a way to visualize pure values in an interactive and
composable way. He calls this technique "Tangible Functional Programming"
@Elliot_2007. The technique allows non-technical people to create content based
on combinations of pure values. 

At the core of the technique are _tangible values_, which are pure values,
including functions that can be visualized and composed with other tangible
values through a graphical user interface.

To combine such values, a set of algebras is provided that allows values to be
applied to each other, even if they are nested in functions or tuples.
This concept is called _deep application_.

Along with the technique, Conal developed an application called Eros that
implements this technique. Eros is particularly suited to creative people with an
artistic interest. A screenshot of Eros is shown in @eros_screenshot.

#figure(
  image("../../../static/eros_screenshot.png", width: 60%),
  caption: [Screenshot of Eros @Elliot_2007]) <eros_screenshot>

"Tangible Functional Programming" is a fascinating technique, and
particularly the way Eros visualizes pure values can be an inspiration for
VisualFP. But ultimately, the technique appears unsuitable for
general-purpose functional programming, especially in an educational context. 
