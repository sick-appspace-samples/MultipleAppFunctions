
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


