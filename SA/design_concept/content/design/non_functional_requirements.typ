#import "../../../acronyms.typ": *

= Non Functional Requirements <non_functional_requirements>

This section describes all non-functional requirements identified for VisualFP.
To find a relevant #ac("NFR"), ISO-25010 @iso-25010 was used for inspiration.

#let NFR(description, verification, acceptanceCriteria, realisation) = {
    description
    v(10pt)
    terms(
        tight: false,
        spacing: 15pt,
        terms.item("Verification", verification),
        terms.item("Acceptance Criteria", acceptanceCriteria),
        terms.item("Realisation", realisation)
    )
}

== NFR1 - Platform Compatibility <nfr1>
#NFR(
    [
        VisualFP should be usable on Windows, MacOS, and Linux devices.
        No extra effort should be required to run VisualFP on any particular #ac("OS").
    ],
    "Test the usage of VisualFP on all three mentioned operating systems.",
    "The installation steps are the same or of equivalent effort for all three mentioned operating systems",
    "Usage of platform-independent technologies"
)

== NFR2 - Learnability <nfr2>
#NFR(
    [
        Since VisualFP targets students who want to learn functional programming, the learning effort shouldn't be on the tool itself but on functional concepts.
    ],
    "Usability Tests with a user without experience in functional programming",
    "A user without experience in functional programming understands how to use VisualFP within 1 hour",
    "Keep the design of VisualPF simple; offer help buttons on more complex blocks"
)
