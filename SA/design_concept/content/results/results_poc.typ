= Proof of Concept
The project produced a proof of concept application, that implements the design concept described in @design_proposal_iteration_2 and @design_specification.
While the application doesn't implement all concepts required to learn functional programming, like the construction of custom data types, the application shows that the concept for function composition works and is easy to use.
This means that the main goal of the project was achieved.

To make the application ready to be used in a classroom, the use cases that weren't achieved during this project, as can be seen in @requirement_validation, need to be implemented.

In addition, there is some potential for improvement in the current implementation of the PoC.
The choice for Threepenny as the UI framework was made primarily due to the given time constraints and the expectation that Threepenny would fast progress while implementing the PoC (which proved to be true).
A, propably GHCJS based, UI technology that doesn't require a local webserver would be better suited to implement a full version of VisualFP.
A different UI framework may also provide better support for functional reactive programming, which is expected to make the UI implementation more concise.

== macOS Electron App
For the project submission, the PoC Electron application was packaged for Windows, Linux & macOS.
The macOS app brought up an unforseen issue:
macOS' gatekeeper checks all downloaded applications for code signatures, notarization & malware.
If the application doesn't pass gatekeeper's checks, which seems to be the case for VisualFP, the application is quarantined @apple-gatekeeper.
In case of VisualFP, gatekeeper's checks resulted in the error message "“VFP.app” is damaged and can't be opened. You should move it to the Bin.".

Gatekeeper can be bypassed, by using the command `xattr -c VFP.app`, with "VFP.app" being the application name.
While the PoC application won't be distributed to any users yet, a future project will have to ensure that this issue is resolved, and the application can be executed without bypassing gatekeeper.