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
