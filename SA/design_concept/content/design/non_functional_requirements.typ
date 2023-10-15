= Non Functinal Requirements
This section describes all non-functional requirements identified for VisualFP.
To find relevant NFRs, ISO-25010 was used for inspiration.

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

== NFR1 - Platform Compatibility
#NFR(
    [
        VisualFP should be usable on Windows, MacOS and Linux devices.
        There should be no extra effort for a user to use VisualFP compared to a user with another OS.
    ],
    "Test the usage of VisualFP on all three mentioned operating systems.",
    "The installation steps are the same or of equivalent effort for all three mentioned operating systems",
    "Usage of platform-independent technologies"
)

== NFR2 - Learnability
#NFR(
    [
        Since VisualFP targets students that want to learn functional programming, the learning effort shouldn't be on the tool itself but on functional concepts.
    ],
    "Usability Tests with a user without experience in functinal programming",
    "A user without experience in functional programming undestands how to use VisualFP within 2 hours",
    "Keep the design of VisualPF simple, offer Help buttons on more complex blocks"
)
