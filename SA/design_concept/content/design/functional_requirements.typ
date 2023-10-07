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
    [TODO: insert diagram],
    caption: "Use Case Diagram"
)<use_case_diagram>

=== UC1 - Composition of simple function
A user wants to compose a simple function using pre-defined functions and e.g. Integer parameters.

=== UC2 - Function execution
A user wants to execute their visually composed functions.

=== UC3 - Composition of function using list comprehension
A user wants to compose a function using list comprehension.

=== UC4 - Composition of recursive function
A user wants to compose a function that is defined by itself.

=== UC5 - Composition of higher-order function
A user wants to compose functions that take other functions as their argument.

=== UC6 - Composition of custom data types
A user wants to be able to create their own data types.

=== UC7 - Saving source file
A user wants to save their composed functions in a source file.

=== UC8 - Opening source file
A user wants to open a previously saved source file to continue working on their functions.

=== UC9 - Grouping of functions into modules
An expert user wants to group functions into modules to keep their code organized.

=== UC10 - Importing of Haskell code
An expert user wants to import their existing Haskell project into VisualFP.