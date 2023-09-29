= Electron JS
Electron JS is a framework for creating desktop apps using HTML, JS and CSS.
This is achieved through the combination of chromium and Node.js.
Electron allows the creation of desktop apps in web-app style, which means that, as long as no native OS resources are needed, the app is automatically capable of running on different OS platforms.
@electron-js

Pros:
- Since apps can be created like any web-app, there is a wide range of libraries available for frontend-development
- A desktop-app allows access to the local file-system, which would allow VisualFP to manage project files.

Cons:
- JavaScript has a weak type-system
- Using any other language than JS for the backend would require the app to start a sub-process
- Since the app contains both chronium and Node.js, the app size is quite large, even for apps with very little logic
