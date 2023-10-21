#import "../../../acronyms.typ": ac

= Threepenny-GUI
Threepenny-GUI is a cross-platform GUI framework to create desktop applications that are run in a web browser.
The framework can be combined with Electron for a thighter integration with the desktop environment.

Threepenny starts a local web server which serves an HTML page.
The server uses a WebSocket connection to communicate with the browser.
Finally, the server sends JavaScript code via this connection to execute it on the client, which is implemented as a JavaScript #ac("FFI").
@threepenny_gui

Pros:
- Haskell can be used for the UI and backend logic.

Cons:
- The framework is still experimental according to its package description. @threepenny_gui_hackage
- The authors are not familiar with this framework.
