-- Last Update: 16/03/2026
-- Total Variables: 155

--[[
Player Information: ~10

Character / Humanoid: ~20

RootPart Position / Vectors: ~10

Camera Data: ~12

Mouse Data: ~10

Input / Device Detection: ~10

Performance Stats (Ping / FPS / Memory): ~5

Workspace Information: ~10

Containers (Backpack / PlayerGui / PlayerScripts): ~6

Time / Date Values: ~15

Game Identifiers (PlaceId, JobId, GameId): ~7

Extra Camera Properties: ~4

Extra Humanoid Properties: ~4

Part Physics Data: ~5

Head Properties: ~3

Graphics / Screen Values: ~6

Object Counts (Players, Parts, Tools): ~5

Server / Client Time: ~6

Date Helpers (Weekday, Weekend, etc.): ~5
]]
local Executor = identifyexecutor and identifyexecutor() or "UnknownExecutor"

local LocalPlayer = game.Players.LocalPlayer
local LocalPlayerName = LocalPlayer.Name
local LocalPlayerDisplayName = LocalPlayer.DisplayName
local LocalPlayerUserId = LocalPlayer.UserId
local LocalPlayerAccountAge = LocalPlayer.AccountAge
local LocalPlayerMembershipType = LocalPlayer.MembershipType
local LocalPlayerFollowUserId = LocalPlayer.FollowUserId
local LocalPlayerNeutral = LocalPlayer.Neutral
local LocalPlayerTeam = LocalPlayer.Team
local LocalPlayerTeamColor = LocalPlayer.TeamColor

local Character = LocalPlayer.Character
local CharacterName = Character and Character.Name
local CharacterParent = Character and Character.Parent

local Humanoid = Character and Character:FindFirstChild("Humanoid")
local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
local Head = Character and Character:FindFirstChild("Head")

local HumanoidHealth = Humanoid and Humanoid.Health
local HumanoidMaxHealth = Humanoid and Humanoid.MaxHealth
local HumanoidJumpPower = Humanoid and Humanoid.JumpPower
local HumanoidHipHeight = Humanoid and Humanoid.HipHeight
local HumanoidRigType = Humanoid and Humanoid.RigType
local HumanoidSit = Humanoid and Humanoid.Sit
local HumanoidJump = Humanoid and Humanoid.Jump
local HumanoidAutoRotate = Humanoid and Humanoid.AutoRotate
local HumanoidFloorMaterial = Humanoid and Humanoid.FloorMaterial
local HumanoidState = Humanoid and Humanoid:GetState()

local RootPartPosition = HumanoidRootPart and HumanoidRootPart.Position
local RootPartVelocity = HumanoidRootPart and HumanoidRootPart.Velocity
local RootPartRotVelocity = HumanoidRootPart and HumanoidRootPart.RotVelocity
local RootPartCFrame = HumanoidRootPart and HumanoidRootPart.CFrame
local RootPartOrientation = HumanoidRootPart and HumanoidRootPart.Orientation
local RootPartLookVector = HumanoidRootPart and HumanoidRootPart.CFrame.LookVector
local RootPartRightVector = HumanoidRootPart and HumanoidRootPart.CFrame.RightVector
local RootPartUpVector = HumanoidRootPart and HumanoidRootPart.CFrame.UpVector

local HeadPosition = Head and Head.Position
local HeadCFrame = Head and Head.CFrame
local HeadOrientation = Head and Head.Orientation

local CurrentCamera = workspace.CurrentCamera
local CameraCFrame = CurrentCamera and CurrentCamera.CFrame
local CameraPosition = CurrentCamera and CurrentCamera.CFrame.Position
local CameraLookVector = CurrentCamera and CurrentCamera.CFrame.LookVector
local CameraRightVector = CurrentCamera and CurrentCamera.CFrame.RightVector
local CameraUpVector = CurrentCamera and CurrentCamera.CFrame.UpVector
local CameraFieldOfView = CurrentCamera and CurrentCamera.FieldOfView
local CameraFocus = CurrentCamera and CurrentCamera.Focus

local ScreenSize = CurrentCamera and CurrentCamera.ViewportSize
local ScreenWidth = ScreenSize and ScreenSize.X
local ScreenHeight = ScreenSize and ScreenSize.Y
local ScreenCenter = ScreenSize and Vector2.new(ScreenSize.X / 2, ScreenSize.Y / 2)

local Mouse = LocalPlayer:GetMouse()
local MouseTarget = Mouse.Target
local MouseHit = Mouse.Hit
local MouseUnitRay = Mouse.UnitRay
local MouseX = Mouse.X
local MouseY = Mouse.Y
local MouseIcon = Mouse.Icon
local MouseTargetFilter = Mouse.TargetFilter

local MousePosition = game:GetService("UserInputService"):GetMouseLocation()

local IsMobile = game:GetService("UserInputService").TouchEnabled
local IsComputer = game:GetService("UserInputService").KeyboardEnabled
local IsGamepad = game:GetService("UserInputService").GamepadEnabled
local IsTenFootInterface = game:GetService("GuiService").IsTenFootInterface
local IsVR = game:GetService("VRService").VREnabled

local UserInputMouseEnabled = game:GetService("UserInputService").MouseEnabled
local UserInputKeyboardEnabled = game:GetService("UserInputService").KeyboardEnabled
local UserInputTouchEnabled = game:GetService("UserInputService").TouchEnabled
local UserInputAccelerometerEnabled = game:GetService("UserInputService").AccelerometerEnabled
local UserInputGyroscopeEnabled = game:GetService("UserInputService").GyroscopeEnabled

local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
local ServerMemory = game:GetService("Stats").GetTotalMemoryUsageMb and game:GetService("Stats"):GetTotalMemoryUsageMb()
local FrameRate = game:GetService("Stats").Workspace.FPS:GetValue()

local WorkspaceGravity = workspace.Gravity
local WorkspaceCurrentCamera = workspace.CurrentCamera
local WorkspaceDistributedGameTime = workspace.DistributedGameTime
local WorkspaceFallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight

local PlayerBackpack = LocalPlayer.Backpack
local PlayerGui = LocalPlayer.PlayerGui
local PlayerScripts = LocalPlayer.PlayerScripts

local BackpackChildren = PlayerBackpack and PlayerBackpack:GetChildren()
local CharacterChildren = Character and Character:GetChildren()
local PlayerGuiChildren = PlayerGui and PlayerGui:GetChildren()

local WorkspaceChildren = workspace:GetChildren()
local WorkspaceDescendants = workspace:GetDescendants()

local PlayerUserIdString = tostring(LocalPlayerUserId)

local CurrentUnixTime = os.time()
local DateTable = os.date("*t")
local CurrentYear = DateTable.year
local CurrentMonth = DateTable.month
local CurrentDay = DateTable.day
local CurrentHour = DateTable.hour
local CurrentMinute = DateTable.min
local CurrentSecond = DateTable.sec
local CurrentWeekDay = DateTable.wday
local CurrentYearDay = DateTable.yday

local IsDayTime = CurrentHour >= 6 and CurrentHour < 18
local IsNightTime = CurrentHour < 6 or CurrentHour >= 18

local CameraMouseRay = CurrentCamera and CurrentCamera:ScreenPointToRay(MouseX, MouseY)

local DistanceCameraToPlayer = (CurrentCamera and HumanoidRootPart) and (CurrentCamera.CFrame.Position - HumanoidRootPart.Position).Magnitude

local PlaceId = game.PlaceId
local GameId = game.GameId
local JobId = game.JobId
local CreatorId = game.CreatorId
local CreatorType = game.CreatorType
local PrivateServerId = game.PrivateServerId
local PrivateServerOwnerId = game.PrivateServerOwnerId

local WorkspaceName = workspace.Name
local WorkspaceParent = workspace.Parent
local WorkspaceStreamingEnabled = workspace.StreamingEnabled

local CurrentCameraCameraType = workspace.CurrentCamera and workspace.CurrentCamera.CameraType
local CurrentCameraCameraSubject = workspace.CurrentCamera and workspace.CurrentCamera.CameraSubject
local CurrentCameraNearPlaneZ = workspace.CurrentCamera and workspace.CurrentCamera.NearPlaneZ
local CurrentCameraMaxAxisFieldOfView = workspace.CurrentCamera and workspace.CurrentCamera.MaxAxisFieldOfView

local LocalPlayerLocaleId = LocalPlayer.LocaleId
local LocalPlayerHasVerifiedBadge = LocalPlayer.HasVerifiedBadge
local LocalPlayerSimulationRadius = LocalPlayer.SimulationRadius
local LocalPlayerRespawnLocation = LocalPlayer.RespawnLocation

local CharacterPrimaryPart = Character and Character.PrimaryPart
local CharacterArchivable = Character and Character.Archivable

local HumanoidUseJumpPower = Humanoid and Humanoid.UseJumpPower
local HumanoidHealthDisplayDistance = Humanoid and Humanoid.HealthDisplayDistance
local HumanoidNameDisplayDistance = Humanoid and Humanoid.NameDisplayDistance
local HumanoidBreakJointsOnDeath = Humanoid and Humanoid.BreakJointsOnDeath

local RootPartMass = HumanoidRootPart and HumanoidRootPart.Mass
local RootPartAnchored = HumanoidRootPart and HumanoidRootPart.Anchored
local RootPartCanCollide = HumanoidRootPart and HumanoidRootPart.CanCollide
local RootPartAssemblyLinearVelocity = HumanoidRootPart and HumanoidRootPart.AssemblyLinearVelocity
local RootPartAssemblyAngularVelocity = HumanoidRootPart and HumanoidRootPart.AssemblyAngularVelocity

local HeadTransparency = Head and Head.Transparency
local HeadSize = Head and Head.Size
local HeadCanCollide = Head and Head.CanCollide

local CameraViewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize
local CameraDiagonalSize = CameraViewportSize and math.sqrt(CameraViewportSize.X^2 + CameraViewportSize.Y^2)

local MouseViewSizeX = Mouse.ViewSizeX
local MouseViewSizeY = Mouse.ViewSizeY

local GraphicsQualityLevel = UserSettings():GetService("UserGameSettings").SavedQualityLevel
local FullscreenEnabled = UserSettings():GetService("UserGameSettings").Fullscreen

local ClientMemoryUsage = game:GetService("Stats"):GetTotalMemoryUsageMb()

local WorkspacePartCount = #workspace:GetDescendants()
local WorkspaceChildCount = #workspace:GetChildren()

local PlayerCount = #game.Players:GetPlayers()

local BackpackToolCount = PlayerBackpack and #PlayerBackpack:GetChildren()
local CharacterPartCount = Character and #Character:GetDescendants()

local CameraDistanceFromPlayer = (workspace.CurrentCamera and HumanoidRootPart) and (workspace.CurrentCamera.CFrame.Position - HumanoidRootPart.Position).Magnitude

local ServerTime = workspace.DistributedGameTime
local ClientClock = os.clock()
local SystemTime = os.time()

local DateTableLocal = os.date("*t")
local DateTableUTC = os.date("!*t")

local CurrentMonthDay = DateTableLocal.day
local CurrentYearNumber = DateTableLocal.year
local CurrentWeekDayNumber = DateTableLocal.wday

local IsWeekend = CurrentWeekDayNumber == 1 or CurrentWeekDayNumber == 7
local IsWeekday = not IsWeekend

local ScreenAspectRatio = ScreenWidth and ScreenHeight and (ScreenWidth / ScreenHeight)
