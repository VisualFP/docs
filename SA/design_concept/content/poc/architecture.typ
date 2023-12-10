= Architecture <poc-architecture>
Content: Explain architecture with electron, threepenny, frontend & backend

== Translation Layer <translation-layer>

The translation layer has been built between the UI and the inference engine
and is responsible for converting the different data models.

#figure(
  text(align(center, image("../../static/translation-layer.svg", width: 55%))),
  caption: [Translation Layer])  <translation-layer-image>

As can be seen in @translation-layer-image, the translation layer translates between the data models used by the UI and the type inference:

1. From the untyped model of the UI to the input model of the inference engine 
2. From the inferred model of the inference engine to the typed UI model

This process isn't as straightforward as one might think, as the UI and
inference engine have different representations of function application: The UI
layer maintains a list of arguments per reference. In contrast, the inference engine
expects applications to happen in dedicated nodes. This discrepancy has also
been described in @design-application.

Translating the inferred model into the typed UI model is quite simple:
Applications are simplified into arguments of the underlying element.
Translating untyped UI values, where the amount of arguments is unknown, into
the input model of the inference engine requires a more elaborate process.

One approach to this issue might have been to try out different numbers of
nested applications and see which one might be successfully type-checked.

For VisualFP a different approach was chosen: In case the arguments of a
reference need to be inferred, the UI model passes the original type-hole along.
The translation layer then compares the arity of the type-hole with the arity of
the reference and adds as many applications as needed for the two to match.    
