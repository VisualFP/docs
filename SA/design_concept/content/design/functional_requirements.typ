#import "../../../acronyms.typ": *

= Functional Requirements <functional_requirements>

The following section describes all actors and use cases identified for the
VisualFP application.

== Actors
VisualFP has two actors:

#terms(
    terms.item(
        "Student User",
        [
            The student user is the primary user of VisualFP and, therefore, the main influence on the visualization design.
            The student user wants to learn functional programming using VisualFP.
            They want to do that by visually composing functions in a simple #ac("UI").
            The #ac("UI") should simplify understanding functional concepts that many beginners struggle with.
        ]
    ),
    terms.item(
        "Expert User",
        [
            The expert user is an experienced professional who wants to use VisualFP to help them understand their code better.
            For that, they want to import their existing Haskell project into VisualFP.
        ]
    )
)

== Use Cases <use-cases>

@use_case_diagram gives an overview of all identified use cases.
By default, "user" in the use case description refers to the "student user".

#figure(
    image("../../static/SA_use_cases.png", width: 80%),
    caption: "Use Case Diagram"
)<use_case_diagram>

As the aim of this project is to find a visual representation of functional programming,
the use case descriptions are kept very brief and only state the intention behind the use case.

=== UC1 - Simple Function Composition
A user wants to compose a simple function using pre-defined functions, e.g., Integer parameters.

=== UC2 - Function Execution
A user wants to execute their visually composed functions to see the effects of their functions on data.

=== UC3 - Recursive Function Composition
A user wants to compose a function that is defined using itself.
To do so, the user needs possibilities to distinguish between a recursive and a base case.

=== UC4 - Function Composition using Higher-Order Functions
To create generic functions that can be used in different contexts, a user wants to compose functions that take other functions as their argument.

=== UC5 - Curried Functions
A user wants to create a function by partially applying a curried function.

=== UC6 - Function Composition using Lists
A user wants to compose a function using lists, so that they can collect data and process it further.

=== UC7 - Data Type Composition
A user wants to be able to create their own data types to represent data of their problem domain accurately.

=== UC8 - Save Source File
A user wants to save their composed functions in a source file so they can keep their work when, e.g., restarting their computer.

=== UC9 - Open Source File
A user wants to open a previously saved source file to continue working on their program.

=== UC10 - Group Functions into Modules
An expert user wants to group functions into modules to keep their code organized.

=== UC11 - Import Haskell code
An expert user wants to import their existing Haskell project into VisualFP so they can get a better understanding of their code from its visualization.

== Prioritization & Scope
The focus of this project lies in creating a design that allows to develop functional applications visually and is suitable for beginners.

Use cases 1 - 6 have been deemed more important to reach this goal and thus have higher priority than use cases 6 - 9.
Use cases 10 and 11 are not in this project's scope but are listed for completion.
