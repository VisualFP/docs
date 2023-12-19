= Desktop Application

A desktop application can be installed on the user's device with one installer.
Both the frontend and backend are executed on the user's device.

This means that there is no special infrastructure required to host the
application. The application can also access the local file system and
other development tools such as Cabal
#footnote("https://www.haskell.org/cabal/").

Unfortunately, every user would need to install the application themselves. The
application also would need to be built separately per operating system.