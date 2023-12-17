= Type Inference <type-inference>

VisualFP features a type-inference engine responsible for figuring out which
expressions are valid, determine which type-holes are necessary, and annotate
sub-expressions with their according types.

It operates on a separate expression model to isolate the inference engine.
The engine is not responsible for converting to and
from the UI model; this is done by a translation layer described in
@translation-layer.

Heavy inspiration for the implementation of the engine was taken from the talk
"Type inference as constraint solving" by Simon Peyton Jones @spj-ghc-inference.

== Phases

An overview of the inference engine is shown in
@inference-engine-components. It shows how the process is separated into 3
phases.

#figure(
  align(center, image("../../static/inference-engine.svg", width: 65%)),
  caption: [Type-inference engine components])  <inference-engine-components>

1. *Elaboration*: #[The elaboration phase takes an input expression and
  annotates all elements with placeholder types called _unification variables_.
  Along the way, it collects these variables and creates a list of constraints
  for them. For example, if a value of type $alpha$ is applied to a value of
  type $beta$, then $alpha$ must be a function taking $beta$ as the argument.
  
  A more detailed description of these constraints can be found in
  @constraint-language.]

2. *Unification*: #[Next, the unification algorithm tries to find a solution for
  the unification variables that satisfy all constraints. If it succeeds, A
  concrete type can be assigned to each unification variable.

  The algorithm is based on Prolog, as described by Prof. Dr.
  Farhad D. Mehta in his lecture @mehta-unification.]

3. *Zonking*: #[Using the elaborated expression, still filled with unification
  variables, and the results of the unification phase, the zonking phase inserts
  the concrete types into a new expression.]

== Constraint Language <constraint-language>

The inference engine is based on what Simon Peyton Jones describes as "the
French Approach" @spj-ghc-inference. It has been described in the paper "The
Essence of ML Type Inference" by Francois Pottier and Didier Rémy
@the-french-approach.

In such an engine, the constraints are essential. They contain all the knowledge
gained through the elaboration pass of the input and can be used by the
unification algorithm to sort out all types. They are also what differentiates the
"French approach" from a classical Dalmas-Milner inference: The solving of
constraints is deferred, as opposed to being solved in one pass
@spj-ghc-inference. 

The constraint language describes the structure of constraints. Simon Peyton
Jones' implementation @spj-ghc-inference inspires the constraint language used
by VisualFP with a few adjustments.

- There is no implication constraint.
- Constant, constructed, and unification types are summarized as a single sum
  type.
- Conjunctions are represented as lists of constraints instead of
  combinations of two to form a tree. As a flat list, there is also no need for
  an empty constraint.
