#import "../../../acronyms.typ": ac

= Threepenny-GUI

The Threepenny-GUI framework was written in Haskell to create desktop
applications that run in a web browser. The framework can be combined with
Electron for a tighter integration with the desktop environment.

Threepenny starts a local web server written in Haskell that serves a
#ac("HTML") page.
Then, the server establishes a WebSocket connection to communicate with
the browser.
Finally, using a JavaScript #ac("FFI"), Threepenny sends JavaScript code via this connection to execute it on
the client.

Threepenny also offers the possibility of implementing the application in
#ac("FRP") style @threepenny_gui.

Using Haskell on both the front and backend would be an advantage over other
frameworks. Threepenny's #ac("FRP") specific functions should allow for a
good architecture.

It is to be noted that Threepenny is still in an experimental phase, according to
the package author @threepenny_gui_hackage. Also, neither author is familiar
with the technology.
