#import "../../../../acronyms.typ": *

= Enso
Enso is a functional programming language designed for data science that Enso International Inc @enso-language created.
There is a text and a visual editor to create programs.

The visual editor allows a user to define components that can be connected, symbolizing the data flow from one component to another.
The editor also offers previews for a component's data, which, e.g., allows a user to see a modified picture like in @enso_screenshot. 

#figure(
    image("../../../static/enso_screenshot.png", width: 80%),
    caption: [Example program in Enso @enso-language]
)<enso_screenshot>

Enso is visually impressive and largely intuitive regarding data flow.
For example, downloading data from a public #ac("API") and aggregating it is super easy.
However, some operations, such as dividing a number with another number, are pretty complicated.
Based on that, Enso seems to be an excellent tool to work with datasets but not so much for creating programs with complex logic.