#import "../../../acronyms.typ": ac

= Translation Component <translation-layer>

The translation component has been built between the #ac("UI") and the inference engine.
As can be seen in @component-diagram, it is responsible for translating between the data models used by the #ac("UI") and the type inference engine:
1. From the untyped model of the #ac("UI") to the input model of the inference engine 
2. From the inferred model of the inference engine to the typed #ac("UI") model

This process isn't as straightforward as one might think, as the #ac("UI") and
inference engine have different representations of function application: The #ac("UI")
maintains a list of arguments per reference. In contrast, the inference engine
expects application to happen in dedicated nodes. This discrepancy has also
been described in @application-decision.

Translating the inferred model into the typed #ac("UI") model is quite simple:
Applications are simplified into arguments of the underlying element.
Translating untyped #ac("UI") values, where the amount of arguments is unknown, into
the input model of the inference engine requires a more elaborate process.

One approach might be to try out different numbers of
nested applications and see if one might successfully type-check.

For VisualFP a different approach was chosen: In case the arguments of a
reference need to be inferred, the #ac("UI") model passes the original type hole along.
The translation component then compares the arity of the type hole with the arity of
the reference and adds as many applications as needed for the two to match.    
