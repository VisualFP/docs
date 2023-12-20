#import "../../../acronyms.typ": ac

= Electron.js <option-electron>

Electron.js is a framework for creating desktop apps using #ac("HTML"), #ac("JS"), and #ac("CSS"),
implemented by combining chromium and Node.js.

Electron allows the creation of desktop apps in web-app style, which means that,
as long as no native #ac("OS") features are needed, an app is automatically capable of
running on different #ac("OS") platforms without adjustments. @electron-js

For VisualFP, Electron.js can implement the #ac("UI") and the backend logic.

Since Electron apps can be created like any web app, many libraries are
available for frontend development. This also allows the combination with any other #ac("UI") framework that targets the web.

The authors already have experience with JavaScript and its ecosystem.

Electron, like any browser, requires the application to be written in
JavaScript. JavaScript is an interpreted language and has a weak type system. It
is also not considered a primarily functional language, as it offers many
imperative features and #ac("API")s.

Considering that both a Node.js and a Chromium runtime are bundled in Electron,
the resulting app sizes are quite large, even for apps with little logic.
Rendering the app in a browser also requires much more resources than #ac("UI")s
built with native #ac("OS") #ac("API")s (e.g., Win32 on Windows)
