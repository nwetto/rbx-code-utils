local me = game:GetService("Players").LocalPlayer
local hrp = me.Character.HumanoidRootPart

local oldpos = hrp.CFrame

hrp.CFrame = CFrame.new(0,0,0)

task.wait(1)

hrp.CFrame = oldpos
-- aaaaaaaaaa
