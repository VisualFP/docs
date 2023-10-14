= Functional Requirements
The following section describes all use cases identified for the VisualFP application.

== Actors
VisualFP has two actors:

#terms(
    terms.item(
        "Student User",
        [
            The student user is the main user of VisualFP and therefore the main influence on the visualization design.
            The user wants to learn functional programming using VisualFP.
            They want to do that by visually composing functions in a simple UI.
            The UI should simplify the understanding of functional concepts that many beginners have difficulties with.
        ]
    ),
    terms.item(
        "Expert User",
        [
            The expert user is an experienced professional that wants to use VisualFP to help them to understand their code better.
            For that, they want to import their existing Haskell project into VisualFP.
        ]
    )
)

== Use Cases

@use_case_diagram gives an overview of all identified use-cases.
By default, the usage of the term "user" in the use case description refers to the role "student user".

#figure(
    image("../../static/SA_use_cases.png", width: 80%),
    caption: "Use Case Diagram"
)<use_case_diagram>

=== UC1 - Simple Function Composition
A user wants to compose a simple function using pre-defined functions and e.g. Integer parameters.

=== UC2 - Function Execution
A user wants to execute their visually composed functions.

=== UC3 - Recursive Function Composition
A user wants to compose a function that is defined by itself.

=== UC4 - Function Composition using Higher-Order Functions
A user wants to compose functions that take other functions as their argument.

=== UC5 - Curried Functions
A user wants to create function by partially applying a curried function.

=== UC6 - Function Composition using Lists
A user wants to compose a function using lists, i.e. list construction.

=== UC7 - Data Type Composition
A user wants to be able to create their own data types.

=== UC8 - Save Source File
A user wants to save their composed functions in a source file.

=== UC9 - Open Source File
A user wants to open a previously saved source file to continue working on their functions.

=== UC10 - Group Functions into Modules
An expert user wants to group functions into modules to keep their code organized.

=== UC11 - Import Haskell code
An expert user wants to import their existing Haskell project into VisualFP.

== Prioritization
The focus of this paper lies on creating a design for function composition.
This means that use cases 1 - 5 have the priority must-have and use cases 6 - 11 have priority nice-to-have.
