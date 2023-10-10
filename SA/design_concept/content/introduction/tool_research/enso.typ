#import "../../../../acronyms.typ": *

= Enso
Enso is a functional programming language created by Enso International Inc., designed for data science. @enso-language
Programs can be created by both text and a visual editor.

The visual editor allows a user to define components that can be connected with each other, symbolizing the data-flow from one component to another.
The editor also offers previews for a component's data, which e.g. allows a user to see a modified picture like in @enso_screenshot. 

#figure(
    image("../../../static/enso_screenshot.png", width: 80%),
    caption: [Example programm in Enso @enso-language]
)<enso_screenshot>

Enso is visually impressive and largely intuitive reagarding data-flow.
E.g. downloading data from a public #ac("API") and aggregating it is super easy.
However, some operations, such as dividing a number with another number, are somehow quite complicated.
Based on that, enso seems to be a great tool to work on datasets, but not so much to create programs with actual logic.