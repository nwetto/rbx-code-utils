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
local var = {}

var.Executor = identifyexecutor and identifyexecutor() or "UnknownExecutor"

var.LocalPlayer = game.Players.LocalPlayer
var.LocalPlayerName = var.LocalPlayer.Name
var.LocalPlayerDisplayName = var.LocalPlayer.DisplayName
var.LocalPlayerUserId = var.LocalPlayer.UserId
var.LocalPlayerAccountAge = var.LocalPlayer.AccountAge
var.LocalPlayerMembershipType = var.LocalPlayer.MembershipType
var.LocalPlayerFollowUserId = var.LocalPlayer.FollowUserId
var.LocalPlayerNeutral = var.LocalPlayer.Neutral
var.LocalPlayerTeam = var.LocalPlayer.Team
var.LocalPlayerTeamColor = var.LocalPlayer.TeamColor

var.Character = var.LocalPlayer.Character
var.CharacterName = var.Character and var.Character.Name
var.CharacterParent = var.Character and var.Character.Parent

var.Humanoid = var.Character and var.Character:FindFirstChild("Humanoid")
var.HumanoidRootPart = var.Character and var.Character:FindFirstChild("HumanoidRootPart")
var.Head = var.Character and var.Character:FindFirstChild("Head")

var.HumanoidHealth = var.Humanoid and var.Humanoid.Health
var.HumanoidMaxHealth = var.Humanoid and var.Humanoid.MaxHealth
var.HumanoidJumpPower = var.Humanoid and var.Humanoid.JumpPower
var.HumanoidHipHeight = var.Humanoid and var.Humanoid.HipHeight
var.HumanoidRigType = var.Humanoid and var.Humanoid.RigType
var.HumanoidSit = var.Humanoid and var.Humanoid.Sit
var.HumanoidJump = var.Humanoid and var.Humanoid.Jump
var.HumanoidAutoRotate = var.Humanoid and var.Humanoid.AutoRotate
var.HumanoidFloorMaterial = var.Humanoid and var.Humanoid.FloorMaterial
var.HumanoidState = var.Humanoid and var.Humanoid:GetState()

var.RootPartPosition = var.HumanoidRootPart and var.HumanoidRootPart.Position
var.RootPartVelocity = var.HumanoidRootPart and var.HumanoidRootPart.Velocity
var.RootPartRotVelocity = var.HumanoidRootPart and var.HumanoidRootPart.RotVelocity
var.RootPartCFrame = var.HumanoidRootPart and var.HumanoidRootPart.CFrame
var.RootPartOrientation = var.HumanoidRootPart and var.HumanoidRootPart.Orientation
var.RootPartLookVector = var.HumanoidRootPart and var.HumanoidRootPart.CFrame.LookVector
var.RootPartRightVector = var.HumanoidRootPart and var.HumanoidRootPart.CFrame.RightVector
var.RootPartUpVector = var.HumanoidRootPart and var.HumanoidRootPart.CFrame.UpVector

var.HeadPosition = var.Head and var.Head.Position
var.HeadCFrame = var.Head and var.Head.CFrame
var.HeadOrientation = var.Head and var.Head.Orientation

var.CurrentCamera = workspace.CurrentCamera
var.CameraCFrame = var.CurrentCamera and var.CurrentCamera.CFrame
var.CameraPosition = var.CurrentCamera and var.CurrentCamera.CFrame.Position
var.CameraLookVector = var.CurrentCamera and var.CurrentCamera.CFrame.LookVector
var.CameraRightVector = var.CurrentCamera and var.CurrentCamera.CFrame.RightVector
var.CameraUpVector = var.CurrentCamera and var.CurrentCamera.CFrame.UpVector
var.CameraFieldOfView = var.CurrentCamera and var.CurrentCamera.FieldOfView
var.CameraFocus = var.CurrentCamera and var.CurrentCamera.Focus

var.ScreenSize = var.CurrentCamera and var.CurrentCamera.ViewportSize
var.ScreenWidth = var.ScreenSize and var.ScreenSize.X
var.ScreenHeight = var.ScreenSize and var.ScreenSize.Y
var.ScreenCenter = var.ScreenSize and Vector2.new(var.ScreenSize.X/2,var.ScreenSize.Y/2)

var.Mouse = var.LocalPlayer:GetMouse()
var.MouseTarget = var.Mouse.Target
var.MouseHit = var.Mouse.Hit
var.MouseUnitRay = var.Mouse.UnitRay
var.MouseX = var.Mouse.X
var.MouseY = var.Mouse.Y
var.MouseIcon = var.Mouse.Icon
var.MouseTargetFilter = var.Mouse.TargetFilter

var.MousePosition = game:GetService("UserInputService"):GetMouseLocation()

var.IsMobile = game:GetService("UserInputService").TouchEnabled
var.IsComputer = game:GetService("UserInputService").KeyboardEnabled
var.IsGamepad = game:GetService("UserInputService").GamepadEnabled
var.IsTenFootInterface = game:GetService("GuiService").IsTenFootInterface
var.IsVR = game:GetService("VRService").VREnabled

var.UserInputMouseEnabled = game:GetService("UserInputService").MouseEnabled
var.UserInputKeyboardEnabled = game:GetService("UserInputService").KeyboardEnabled
var.UserInputTouchEnabled = game:GetService("UserInputService").TouchEnabled
var.UserInputAccelerometerEnabled = game:GetService("UserInputService").AccelerometerEnabled
var.UserInputGyroscopeEnabled = game:GetService("UserInputService").GyroscopeEnabled

var.Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
var.ServerMemory = game:GetService("Stats").GetTotalMemoryUsageMb and game:GetService("Stats"):GetTotalMemoryUsageMb()
var.FrameRate = game:GetService("Stats").Workspace.FPS:GetValue()

var.WorkspaceGravity = workspace.Gravity
var.WorkspaceCurrentCamera = workspace.CurrentCamera
var.WorkspaceDistributedGameTime = workspace.DistributedGameTime
var.WorkspaceFallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight

var.PlayerBackpack = var.LocalPlayer.Backpack
var.PlayerGui = var.LocalPlayer.PlayerGui
var.PlayerScripts = var.LocalPlayer.PlayerScripts

var.BackpackChildren = var.PlayerBackpack and var.PlayerBackpack:GetChildren()
var.CharacterChildren = var.Character and var.Character:GetChildren()
var.PlayerGuiChildren = var.PlayerGui and var.PlayerGui:GetChildren()

var.WorkspaceChildren = workspace:GetChildren()
var.WorkspaceDescendants = workspace:GetDescendants()

var.PlayerUserIdString = tostring(var.LocalPlayerUserId)

var.CurrentUnixTime = os.time()
var.DateTable = os.date("*t")
var.CurrentYear = var.DateTable.year
var.CurrentMonth = var.DateTable.month
var.CurrentDay = var.DateTable.day
var.CurrentHour = var.DateTable.hour
var.CurrentMinute = var.DateTable.min
var.CurrentSecond = var.DateTable.sec
var.CurrentWeekDay = var.DateTable.wday
var.CurrentYearDay = var.DateTable.yday

var.IsDayTime = var.CurrentHour >= 6 and var.CurrentHour < 18
var.IsNightTime = var.CurrentHour < 6 or var.CurrentHour >= 18

var.CameraMouseRay = var.CurrentCamera and var.CurrentCamera:ScreenPointToRay(var.MouseX,var.MouseY)

var.DistanceCameraToPlayer = (var.CurrentCamera and var.HumanoidRootPart) and (var.CurrentCamera.CFrame.Position - var.HumanoidRootPart.Position).Magnitude

var.PlaceId = game.PlaceId
var.GameId = game.GameId
var.JobId = game.JobId
var.CreatorId = game.CreatorId
var.CreatorType = game.CreatorType
var.PrivateServerId = game.PrivateServerId
var.PrivateServerOwnerId = game.PrivateServerOwnerId

var.WorkspaceName = workspace.Name
var.WorkspaceParent = workspace.Parent
var.WorkspaceStreamingEnabled = workspace.StreamingEnabled

var.CurrentCameraCameraType = workspace.CurrentCamera and workspace.CurrentCamera.CameraType
var.CurrentCameraCameraSubject = workspace.CurrentCamera and workspace.CurrentCamera.CameraSubject
var.CurrentCameraNearPlaneZ = workspace.CurrentCamera and workspace.CurrentCamera.NearPlaneZ
var.CurrentCameraMaxAxisFieldOfView = workspace.CurrentCamera and workspace.CurrentCamera.MaxAxisFieldOfView

var.LocalPlayerLocaleId = var.LocalPlayer.LocaleId
var.LocalPlayerHasVerifiedBadge = var.LocalPlayer.HasVerifiedBadge
var.LocalPlayerSimulationRadius = var.LocalPlayer.SimulationRadius
var.LocalPlayerRespawnLocation = var.LocalPlayer.RespawnLocation

var.CharacterPrimaryPart = var.Character and var.Character.PrimaryPart
var.CharacterArchivable = var.Character and var.Character.Archivable

var.HumanoidUseJumpPower = var.Humanoid and var.Humanoid.UseJumpPower
var.HumanoidHealthDisplayDistance = var.Humanoid and var.Humanoid.HealthDisplayDistance
var.HumanoidNameDisplayDistance = var.Humanoid and var.Humanoid.NameDisplayDistance
var.HumanoidBreakJointsOnDeath = var.Humanoid and var.Humanoid.BreakJointsOnDeath

var.RootPartMass = var.HumanoidRootPart and var.HumanoidRootPart.Mass
var.RootPartAnchored = var.HumanoidRootPart and var.HumanoidRootPart.Anchored
var.RootPartCanCollide = var.HumanoidRootPart and var.HumanoidRootPart.CanCollide
var.RootPartAssemblyLinearVelocity = var.HumanoidRootPart and var.HumanoidRootPart.AssemblyLinearVelocity
var.RootPartAssemblyAngularVelocity = var.HumanoidRootPart and var.HumanoidRootPart.AssemblyAngularVelocity

var.HeadTransparency = var.Head and var.Head.Transparency
var.HeadSize = var.Head and var.Head.Size
var.HeadCanCollide = var.Head and var.Head.CanCollide

var.CameraViewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize
var.CameraDiagonalSize = var.CameraViewportSize and math.sqrt(var.CameraViewportSize.X^2 + var.CameraViewportSize.Y^2)

var.MouseViewSizeX = var.Mouse.ViewSizeX
var.MouseViewSizeY = var.Mouse.ViewSizeY

var.GraphicsQualityLevel = UserSettings():GetService("UserGameSettings").SavedQualityLevel
var.FullscreenEnabled = UserSettings():GetService("UserGameSettings").Fullscreen

var.ClientMemoryUsage = game:GetService("Stats"):GetTotalMemoryUsageMb()

var.WorkspacePartCount = #workspace:GetDescendants()
var.WorkspaceChildCount = #workspace:GetChildren()

var.PlayerCount = #game.Players:GetPlayers()

var.BackpackToolCount = var.PlayerBackpack and #var.PlayerBackpack:GetChildren()
var.CharacterPartCount = var.Character and #var.Character:GetDescendants()

var.CameraDistanceFromPlayer = (workspace.CurrentCamera and var.HumanoidRootPart) and (workspace.CurrentCamera.CFrame.Position - var.HumanoidRootPart.Position).Magnitude

var.ServerTime = workspace.DistributedGameTime
var.ClientClock = os.clock()
var.SystemTime = os.time()

var.DateTableLocal = os.date("*t")
var.DateTableUTC = os.date("!*t")

var.CurrentMonthDay = var.DateTableLocal.day
var.CurrentYearNumber = var.DateTableLocal.year
var.CurrentWeekDayNumber = var.DateTableLocal.wday

var.IsWeekend = var.CurrentWeekDayNumber == 1 or var.CurrentWeekDayNumber == 7
var.IsWeekday = not var.IsWeekend

var.ScreenAspectRatio = var.ScreenWidth and var.ScreenHeight and (var.ScreenWidth / var.ScreenHeight)

return varnWidth / ScreenHeight)
