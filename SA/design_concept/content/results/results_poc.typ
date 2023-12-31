#import "../../../acronyms.typ": *

= Proof of Concept

The project produced a proof of concept application that implements the design concept as described in @design-iteration-2.
Although the application doesn't offer visualizations for some of the most common aspects of functional programming, such as the construction of custom data types, the application shows that the proposed concept for function composition works and is easy to use.
So, in the author's opinion, the project's main goal was achieved.

To make the application ready for use in a classroom, the use cases that weren't achieved during this project, as shown in @requirement_validation, need to be implemented.

In addition, there is some potential for improvement in the current implementation of the #ac("PoC").
The choice for Threepenny as the #ac("UI") framework was made primarily due to the given time constraints and the expectation that Threepenny allows for fast progress while implementing the #ac("PoC"), which proved to be true.
But a #ac("UI") technology that doesn't require a local web server, probably a GHCJS-based framework, would be better suited to implement a full version of VisualFP, as it would enable the application to be served to any browser as a set of static files.
A different #ac("UI") framework may also provide better support for functional reactive programming, which is expected to make the #ac("UI") implementation more concise.

== macOS Electron App

For the project submission, the #ac("PoC") Electron application was packaged for Windows, Linux & macOS.
Unfortunately, the macOS app has an unforeseen issue: It doesn't pass the macOS gatekeeper checks.

Based on code signature, notarization, and comparison with known malware, gatekeeper flags potentially dangerous applications and restricts them from execution.
@apple-gatekeeper

In the case of VisualFP, the error message "“VFP.app” is damaged and can't be opened. You should move it to the Bin." appears when trying to execute the application.
Gatekeeper can be bypassed using the command `xattr -c VFP.app`, with "VFP.app" being the application name, to execute the application anyway.
A future project would need to address this issue to make the application usable for a broader audience.