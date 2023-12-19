#import "../../../acronyms.typ": ac

= Bolero

Bolero is an F\# wrapper around Blazor
#footnote("https://dotnet.microsoft.com/en-us/apps/aspnet/web-apps/blazor"),
leveraging different libraries to create web applications.  With Blazor, web
applications can run both on the server side through web-sockets or on the
client side through WebAssembly.

While Beloro doesn't implement #ac("FRP"), it has a Model-View-Update
architecture, clearly separating #ac("UI") from business logic in a reactive way.
In addition to defining the web page structure from F\# code, Bolero also offers
the possibility to use #ac("HTML") templates with "holes" as placeholders for page
values, event listeners, etc.  @bolero

The clear separation of the #ac("UI") and business logic and the support of the
established .NET platform are significant advantages for Bolero.

The fact that neither of the authors is familiar with the framework and the
fact that the goal of VisualFP is to create a Haskell-compatible visual editor,
are both downsides.
