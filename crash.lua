local molly = game:GetService("ReplicatedStorage").Weapons.Molotov.Model
local flashbang = game:GetService("ReplicatedStorage").Weapons.Flashbang.Model
local decoy = game:GetService("ReplicatedStorage").Weapons["Decoy Grenade"].Model
local HE = game:GetService("ReplicatedStorage").Weapons["HE Grenade"].Model
local smoke = game:GetService("ReplicatedStorage").Weapons["Smoke Grenade"].Model

function throw_grenade(force, model)
    game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(model, nil, force, force, game.Players.LocalPlayer.Character.UpperTorso.Position, "", "")
end

while task.wait() do
    throw_grenade(100, HE)
    game:GetService("RunService").Heartbeat:Wait()
    throw_grenade(100, molly)
    game:GetService("RunService").Heartbeat:Wait()
    throw_grenade(100, decoy)
    game:GetService("RunService").Heartbeat:Wait()
    throw_grenade(100, flashbang)
    game:GetService("RunService").Heartbeat:Wait()
    throw_grenade(100, smoke)
end
