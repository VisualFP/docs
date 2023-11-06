#import "../../../acronyms.typ": ac

= Threepenny-GUI
Threepenny-GUI GUI framework written in Haskell, to create desktop applications that run in a web browser.
The framework can be combined with Electron for a thighter integration with the desktop environment.

Threepenny starts a local web server which serves an HTML page.
The server uses a WebSocket connection to communicate with the browser.
Finally, the server sends JavaScript code via this connection to execute it on the client, which is implemented as a JavaScript #ac("FFI").

Threepenny also offers the possibility to implement the application in #ac("FRP") style.
@threepenny_gui

Pros:
- Haskell can be used for the UI and backend logic.
- Possibility to use a built-in FRP library.

Cons:
- The framework is still experimental according to its package description. @threepenny_gui_hackage
- The authors are not familiar with this framework.
- The application executable has to be built per platform architecture.
