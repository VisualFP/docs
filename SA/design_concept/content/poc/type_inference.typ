= Type Inference <type-inference>

At the core of the application a type-inference engine is responsible to
figure out which which expressions are valid, and annotate sub-expressions
with their according types.

In order to isolate the inference engine, it operates on its own expression
model which differs from the one used by the UI model. The engine is not
responsible for the conversion to and from the UI model, this is done by a
translation layer as described in @translation_layer.

The inference engine is heavily inspired by the talk "Type inference as
constraint solving" by Simon Peyton Jones @spj-ghc-inference, which
describes an inference engine based on constraint solving.

== Phases

#figure(
  align(center, image("../../static/inference-engine.svg", width: 75%)),
  caption: [Type-inference engine components])  <inference-engine-components>

An overview of the inference engine is shown in
@inference-engine-components. It shows how the process is separated into 3
phases:

1. *Elaboration*: #[The elaboration phase takes the input expression and
  annotates it with placeholder types, called _unification variables_. Along
  the way, it collects these variables and creates a list of constraints for
  them. 

  Each constraint is a tuple of two type values which must be equal. For
  example, if an input expression has a provided type, then a constraint is
  generated that forces the corresponding unification variable to equal that
  known type.

  Other constraints are generated through the usage of the input expression.
  For example, if an expression $a$ is applied to another expression $b$,
  then $b$ must be a function that takes the type of $a$ as input. Futher,
  the expression of the application must equal to the output of $b$.]

2. *Unification*: #[Next, an unification algorithm takes these constraints as
  input and tries to find a solution that satisfies all of them. If it
  succeeds, no constraint left unsolved and a concrete type can be assigned
  to each unification variable.

  The unification algorithm is based on Prolog, as described by Prof. Dr.
  Farhad D. Mehta in his lecture @mehta-unification.

  Each side of a constraint is either a concrete type, a unification
  variable or a constructed type of a name and a list of arguments. There is
  no special handling for function types or list types, as they are just
  modelled as constructed types.]

3. *Zonking*: #[Using the elaborated expression, filled with unification
  variables, and the results of the unification phase, which assign each
  unification variable a type, the zonking phase replaces the variables in
  the elaborated with their according resolved types to generate an infered
  expression.]

Each phase contains its a separate model, with the one being used by the
elaboration phase being very similar to the one outputted from the zonking
phase.

== Elaboration

== Constraint Language
