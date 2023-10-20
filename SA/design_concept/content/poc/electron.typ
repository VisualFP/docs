= Electron JS
Electron JS is a framework for creating desktop apps using HTML, JS, and CSS.
This is achieved through the combination of chromium and Node.js.
Electron allows the creation of desktop apps in web-app style, which means that, as long as no native OS features are needed, an app is automatically capable of running on different OS platforms without adjustments.
@electron-js

For VisualFP, Electron.js can be used to implement both the UI and the backend logic.

Pros:
- Since Electron apps can be created like any web app, there is a wide range of libraries available for frontend-development.
- The authors already have experience with JavaScript and its ecosystem.

Cons:
- JavaScript has a weak type system
- Using any other language than JS for the backend would require the app to start a sub-process
- Since the app contains both chromium and Node.js, the app size is quite large, even for apps with very little logic
- Rendering the app in a browser requires much more resources than with native OS APIs (e.g., Win32 on Windows)