--[[----------------------------------------------------------------------------

  Application Name: CallFunctionsApp

  Description:
  This sample app calls a function which is served from another script. The serve is
  shown in 'ServeFunctionsApp'.

  It must be noted, that when a function is called, the caller application is
  blocked until the function execution is finished. If a function should be executed
  simultaneously  it is necessary to serve and register to events instead of directly
  calling functions.

------------------------------------------------------------------------------]]

--Start of Global Scope---------------------------------------------------------

-- Timer to periodically call function
local timer = Timer.create()
Timer.setPeriodic(timer,true)
Timer.setExpirationTime(timer,1000)

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

-- Timer will be started when all apps are ready
local function handleOnStarted()
  Timer.start(timer)
end
 -- Register to the "Engine.OnStarted" event to make sure all apps are ready
Script.register("Engine.OnStarted", handleOnStarted)

local function handleOnExpired()
  -- This is the call of the function 'printSomething' from 'ServeFunctionsApp'
  ServeFunctionsApp.printSomething()
end
Timer.register(timer, "OnExpired", handleOnExpired)

--End of Function and Event Scope------------------------------------------------


