#import "../../../acronyms.typ": ac

= Electron.js <option-electron>

Electron.js is a framework for creating desktop apps using #ac("HTML"), #ac("JS"), and #ac("CSS"),
achieved by combining chromium and Node.js.

Electron allows the creation of desktop apps in web-app style, which means that,
as long as no native #ac("OS") features are needed, an app is automatically capable of
running on different #ac("OS") platforms without adjustments. @electron-js

For VisualFP, Electron.js can implement the #ac("UI") and the backend logic.

Since Electron apps can be created like any web app, many libraries are
available for front end development. The authors also already have experience
with JavaScript and its ecosystem.

Without transpilation from another language, Electron, like any browser,
requires the application to be written in JavaScript. JavaScript is an
interpreted language and has a weak type system. It is also not considered a
functional language, as it offers many imperative features and #ac("API")s.

The resulting app sizes are pretty large, even for apps with little logic,
considering that both a Node.js and a Chromium runtime are bundled in Electron.
Rendering the app in a browser also requires much more resources than with
native #ac("OS") #ac("API")s (e.g., Win32 on Windows)
