## MultipleAppFunctions
The sample demonstrates how communication via functions between two Apps can be setup.

### Description
This sample apps show how functions can be served (here in the "ServeFunctionsApp") by one
App and called synchronously (blocking) by another (here the "CallFunctionsApp").

To make the Function accessible from another app the function must be served also
in the App Properties (right-click on App -> Properties -> Serves)

It must be noted, that when a function is called, the caller application is
blocked until the function execution is finished. If a function should be executed
simultaneously  it is necessary to serve and register to events instead of directly
calling functions.

### How to Run
To demonstrate, both Apps must be started together.
The output can be viewed in the console.

### Topics
Programming-Pattern, Sample, SICK-AppSpace