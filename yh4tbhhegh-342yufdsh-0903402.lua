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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--finding urself idk why
local players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")

local player = players.LocalPlayer

while wait(.07) do
   if player and player.Character and player.Character:FindFirstChild("Humanoid") then
       rs.g:FireServer(player.Character.HumanoidRootPart)
   end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--an-wipe
game.Players.LocalPlayer.Character.Humanoid.Name = what is wipe
local what is wipe = game.Players.LocalPlayer.Character["1"]:Clone()
what is wipe.Parent = game.Players.LocalPlayer.Character
what is wipe.Name = "game.Players.LocalPlayerHumanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject =
game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = false
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = true
character.Local.game.:Shutdown()()
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--so u dont get rape by the anti exploit
local players = game:GetService("Players")
local rs = game:GetService("ReplicatedStorage")

local player = players.LocalPlayer

while wait(.07) do
   for i,v in pairs(players:GetPlayers()) do
       if v ~= player and v.Character and player.Character then
           local hum,thum = player.Character:FindFirstChild("Humanoid"),v.Character:FindFirstChild("Humanoid")
           if hum and thum and hum.Health > 50 and thum.Health > 50 then
               if player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 60 then
                   rs.g:FireServer(thum.Parent.HumanoidRootPart)
               end
           end
       end
   end
  
function code_detour:get_ccv_position()
        return self.codecave_position_;
    end
 
    function code_detour:set_ccv_position(new_position)
        self.codecave_position_ = new_position;
        
        return self;
    end
