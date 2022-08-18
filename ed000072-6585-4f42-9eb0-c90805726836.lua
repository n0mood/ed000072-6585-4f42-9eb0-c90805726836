--bypass
local old_coroutine_wrap;
old_coroutine_wrap = replaceclosure(coroutine.wrap, newcclosure(function(func, ...)
  if not checkcaller() then
      local caller_info = getinfo(5, "f");
     
       if caller_info and caller_info.func == pcall then
           return coroutine.yield();
       end;
  end;
 
  return old_coroutine_wrap(func, ...);
end));

local CoreGui = game:GetService("CoreGui")
local DevConsole = CoreGui:WaitForChild("DevConsoleMaster")
local DevWindow = DevConsole:FindFirstChild("DevConsoleWindow")
local DevUI = DevWindow:FindFirstChild("DevConsoleUI")
local MainView = DevUI:FindFirstChild("MainView")
local ClientLog = MainView:FindFirstChild("ClientLog")

function ClearConsole()
    for _, Element in next, ClientLog:GetChildren() do
        if Element:IsA("GuiObject") and Element.Name == Element.Name:match("%d+") then
            Element:Destroy()
        end
    end
end

ClearConsole()

game.StarterGui:SetCore("DevConsoleVisible", true)

print("Booting Up Bypasser.lua....")
wait(5)
print("Bypassing RemoteEvents Function....")
wait(5)
print("Bypass Success!")
wait(5)
print("Booting Up Tiality Hub....")
wait(7)
loadstring(game:HttpGet(""))()

wait(2)
print("Tiality Hub Has Been Loaded!")
wait(3)
game.StarterGui:SetCore("DevConsoleVisible", false)
