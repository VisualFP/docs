#import "../../../acronyms.typ": ac

= Bolero
Bolero is an F\# wrapper around Blazor #footnote("https://dotnet.microsoft.com/en-us/apps/aspnet/web-apps/blazor"), leveraging different libraries to create web applications.
With Blazor, web applications can run both on server-side through web-sockes or on client-side through WebAssembly.
While Beloro doesn't implement #ac("FRP"), it has a Model-View-Update architecture, clearly separating UI from business logic in a reactive way.
In addition to defining the web-page structure from F\# code, Bolero also offers the possibility to use HTML templates with "holes" as placeholders for page values, event listeners, etc.
@bolero

Pros:
- Clear separation between UI and business logic
- Bolero is built upon the well established .NET platform

Cons:
- The authors are not familiar with the framework