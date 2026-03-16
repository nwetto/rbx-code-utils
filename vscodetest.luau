local me = game:GetService("Players").LocalPlayer
local hrp = me.Character.HumanoidRootPart
local oldpos = hrp.CFrame

-- aaaaaaaaaaaaaaaaaaaaaaaa
hrp.CFrame = CFrame.new(0,0,0)

task.wait(1)

if hrp.Position == Vector3.new(0,0,0) then
    hrp.CFrame = oldpos
end
-- vscode test only, loll
