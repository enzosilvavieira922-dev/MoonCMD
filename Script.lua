-- Discord server for working games: https://discord.gg/GxKGmkGQD

-- Made by Enz6

-- MoonCMD on Top!

local genv = (getgenv and (getgenv() ~= getfenv()) and getgenv()) or _G
local cloneref = cloneref or function(a) return a end
local coreGui = cloneref(game:GetService("CoreGui"))
local players = cloneref(game:GetService("Players"))
local TweenService = cloneref(game:GetService("TweenService"))
local localPlayer = players.LocalPlayer

local function isElevatedStudioPlugin()
	local s, r = pcall(function()
		return coreGui:GetChildren()
	end)
	return s
end

local gethui = gethui or function()
	local folder
	if isElevatedStudioPlugin() then
		if coreGui:WaitForChild("RobloxGui"):FindFirstChild(".__gethui") then
			folder = coreGui:WaitForChild("RobloxGui"):FindFirstChild(".__gethui")
		else
			folder = Instance.new("Folder")
			folder.Name = '.__gethui'
			folder.Parent = coreGui:WaitForChild("RobloxGui")
		end
	else
		folder = localPlayer:WaitForChild'PlayerGui'
	end
	return folder
end

-- Instances:

local moonCMD = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local menu = Instance.new("ImageButton")
local cmdBox = Instance.new("TextBox")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local remotepath = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local mobileOpen = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local cmds = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local closeButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local cmdList = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local template = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local UICorner_7 = Instance.new("UICorner")

--Properties:
moonCMD.Name = "moonCMD"
moonCMD.Parent = gethui()
moonCMD.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
moonCMD.ResetOnSpawn = false

main.Name = "main"
main.Parent = moonCMD
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.Size = UDim2.new(0, 250, 0, 40)

menu.Name = "menu"
menu.Parent = main
menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
menu.BackgroundTransparency = 1.000
menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
menu.BorderSizePixel = 0
menu.Position = UDim2.new(0.811999977, 0, 0.125, 0)
menu.Size = UDim2.new(0, 27, 0, 30)
menu.Image = "rbxassetid://73467005156187"
menu.ImageColor3 = Color3.fromRGB(153, 153, 153)

cmdBox.Name = "cmdBox"
cmdBox.Parent = main
cmdBox.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cmdBox.BackgroundTransparency = 0.800
cmdBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdBox.BorderSizePixel = 0
cmdBox.Position = UDim2.new(0.163999751, 0, 0, 0)
cmdBox.Size = UDim2.new(0.588, 0, 0.999999642, 0)
cmdBox.Font = Enum.Font.SourceSansBold
cmdBox.PlaceholderColor3 = Color3.fromRGB(103, 103, 103)
cmdBox.PlaceholderText = "MoonCMD loaded"
cmdBox.Text = ""
cmdBox.TextColor3 = Color3.fromRGB(103, 103, 103)
cmdBox.TextScaled = true
cmdBox.TextSize = 12.000
cmdBox.TextWrapped = true

UITextSizeConstraint.Parent = cmdBox
UITextSizeConstraint.MaxTextSize = 18
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = cmdBox

UICorner_2.CornerRadius = UDim.new(0, 16)
UICorner_2.Parent = main

remotepath.Name = "remotepath"
remotepath.Parent = moonCMD
remotepath.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BackgroundTransparency = 0.600
remotepath.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BorderSizePixel = 0
remotepath.Position = UDim2.new(0.395616412, 0, 0.249097273, 0)
remotepath.Size = UDim2.new(0.208000004, 0, 0.0439999998, 0)
remotepath.Text = ""
remotepath.TextColor3 = Color3.fromRGB(255, 255, 255)
remotepath.TextScaled = true
remotepath.TextSize = 14.000
remotepath.TextTransparency = 0.600
remotepath.TextWrapped = true
UICorner_3.CornerRadius = UDim.new(0.400000006, 0)
UICorner_3.Parent = remotepath

mobileOpen.Name = "mobileOpen"
mobileOpen.Parent = moonCMD
mobileOpen.AnchorPoint = Vector2.new(1, 0)
mobileOpen.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
mobileOpen.BorderColor3 = Color3.fromRGB(0, 0, 0)
mobileOpen.BorderSizePixel = 0
mobileOpen.Position = UDim2.new(0.999999821, 0, 0.293097287, 0)
mobileOpen.Selectable = false
mobileOpen.Size = UDim2.new(0.056456618, 0, 0.0343623683, 0)
mobileOpen.Visible = false
mobileOpen.Font = Enum.Font.SourceSansBold
mobileOpen.Text = "CMD"
mobileOpen.TextColor3 = Color3.fromRGB(200, 200, 200)
mobileOpen.TextScaled = true
mobileOpen.TextSize = 14.000
mobileOpen.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(1, 1)
UICorner_4.Parent = mobileOpen

cmds.Name = "cmds"
cmds.Parent = moonCMD
cmds.Active = true
cmds.AnchorPoint = Vector2.new(0.5, 0.5)
cmds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cmds.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmds.BorderSizePixel = 0
cmds.Position = UDim2.new(0.5, 0, 0.5, 0)
cmds.Size = UDim2.new(0.0883912593, 0, 0.287559688, 0)
cmds.Visible = false

UICorner_5.CornerRadius = UDim.new(0, 16)
UICorner_5.Parent = cmds

closeButton.Name = "closeButton"
closeButton.Parent = cmds
closeButton.Active = false
closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(0.306886673, 0, -7.849561e-08, 0)
closeButton.Size = UDim2.new(0.386227101, 0, 0.0566039979, 0)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Text = "Close"
closeButton.TextColor3 = Color3.fromRGB(159, 159, 159)
closeButton.TextSize = 14.000
closeButton.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0.400000006, 0)
UICorner_6.Parent = closeButton

cmdList.Name = "cmdList"
cmdList.Parent = cmds
cmdList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cmdList.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdList.BorderSizePixel = 0
cmdList.Position = UDim2.new(0, 0, 0.0566038229, 0)
cmdList.Size = UDim2.new(0.999999881, 0, 0.943396211, 0)
cmdList.AutomaticCanvasSize = Enum.AutomaticSize.Y
cmdList.CanvasSize = UDim2.new()
cmdList.ScrollBarImageColor3 = Color3.fromRGB(200, 200, 200) -- Optional visual enhancement

UIListLayout.Parent = cmdList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

template.Name = "template"
template.Parent = cmdList
template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
template.BackgroundTransparency = 1.000
template.BorderColor3 = Color3.fromRGB(0, 0, 0)
template.BorderSizePixel = 0
template.Position = UDim2.new(0, 0, 0.032717593, 0)
template.Size = UDim2.new(0.999999821, 0, 0.323825359, 0)
template.Font = Enum.Font.SourceSans
template.Text = "error, please contact cynatica. you possibly executed QuirkyCMD twice."
template.TextColor3 = Color3.fromRGB(200, 200, 200)
template.TextScaled = true
template.TextSize = 14.000
template.TextWrapped = true
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.58, Color3.fromRGB(229, 229, 229)), ColorSequenceKeypoint.new(0.78, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = template

UICorner_7.CornerRadius = UDim.new(0, 10)
UICorner_7.Parent = cmdList

do
	main.Active = true
	main.Selectable = true

	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")

	local dragging = false
	local dragStart
	local startPos
	local targetPos
	local dragSpeed = 8

	local function lerpVec2(a, b, t)
		return a:Lerp(b, t)
	end

	RunService.Heartbeat:Connect(function(dt)
		if not targetPos then return end
		local pos = main.Position
		local newX = lerpVec2(Vector2.new(pos.X.Offset, 0), Vector2.new(targetPos.X.Offset, 0), dt * dragSpeed).X
		local newY = lerpVec2(Vector2.new(0, pos.Y.Offset), Vector2.new(0, targetPos.Y.Offset), dt * dragSpeed).Y
		main.Position = UDim2.new(pos.X.Scale, newX, pos.Y.Scale, newY)
	end)

	local function startDrag(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = main.Position
			local conn
			conn = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					conn:Disconnect()
				end
			end)
		end
	end

	main.InputBegan:Connect(startDrag)

	for i, child in main:GetChildren() do
		if child.Name == "menu" and child:IsA("ImageButton") then
			child.InputBegan:Connect(startDrag)
		end
	end

	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			targetPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

do
	local originalSize = UDim2.new(0, 60, 0, 40)
	local expandedSize = UDim2.new(0, 250, 0, 40)

	main.Size = originalSize

	local menu = main:FindFirstChild("menu")
	local commandsBtn = nil
	if menu then
		local selection = menu:FindFirstChild("selection")
		if selection then
			commandsBtn = selection:FindFirstChild("commands")
		end
	end
	local cmdBox = main:FindFirstChild("cmdBox")
	local cmdList = main:FindFirstChild("cmdList")
	local template = cmdList and cmdList:FindFirstChild("template")

	local tweenTime = 0.45 
	local outTweenTime = 0.45
	local easingStyle = Enum.EasingStyle.Quad
	local easingDir = Enum.EasingDirection.Out

	local cmdListOriginalPosition = cmdList and cmdList.Position
	local cmdListHiddenPosition = cmdListOriginalPosition and UDim2.new(cmdListOriginalPosition.X.Scale, cmdListOriginalPosition.X.Offset, cmdListOriginalPosition.Y.Scale + 1, cmdListOriginalPosition.Y.Offset)
	local cmdListOriginalTransparency = cmdList and cmdList.BackgroundTransparency or 0

	local templateOriginalPosition = template and template.Position
	local templateHiddenPosition = templateOriginalPosition and UDim2.new(templateOriginalPosition.X.Scale, templateOriginalPosition.X.Offset, templateOriginalPosition.Y.Scale + 1, templateOriginalPosition.Y.Offset)
	local templateOriginalTransparency = template and template.TextTransparency or 0
	local templateOriginalBGTransparency = template and template.BackgroundTransparency or 0

	local cmdBoxOriginalBG = cmdBox and (cmdBox.BackgroundTransparency or 0) or 0
	local cmdBoxOriginalText = cmdBox and (cmdBox.TextTransparency or 0) or 0

	if cmdBox then
		cmdBox.Visible = false
		cmdBox.BackgroundTransparency = 1
		cmdBox.TextTransparency = 1
	end
	if cmdList then
		if cmdListHiddenPosition then
			cmdList.Position = cmdListHiddenPosition
		end
		cmdList.Visible = false
		cmdList.BackgroundTransparency = 1
	end
	if template then
		if templateHiddenPosition then
			template.Position = templateHiddenPosition
		end
		template.Visible = false
		template.TextTransparency = 1
		template.BackgroundTransparency = 1
	end

	local cmdBoxBGtween, cmdBoxTextTween, mainTween, btnTween
	local cmdListTween, templateTween, templateBGTween

	local function cancelCmdBoxTweens()
		if cmdBoxBGtween then cmdBoxBGtween:Cancel() cmdBoxBGtween = nil end
		if cmdBoxTextTween then cmdBoxTextTween:Cancel() cmdBoxTextTween = nil end
	end
	local function cancelmainTween()
		if mainTween then mainTween:Cancel() mainTween = nil end
	end
	local function cancelBtnTween()
		if btnTween then btnTween:Cancel() btnTween = nil end
	end
	local function cancelCmdListTween()
		if cmdListTween then cmdListTween:Cancel() cmdListTween = nil end
	end
	local function cancelTemplateTweens()
		if templateTween then templateTween:Cancel() templateTween = nil end
		if templateBGTween then templateBGTween:Cancel() templateBGTween = nil end
	end

	local function setChildrenVisibility(visible)
		for _, child in main:GetChildren() do
			if child ~= menu and child ~= script and child:IsA("GuiObject") and child ~= cmdBox and child ~= cmdList then
				child.Visible = visible
			end
		end
	end
	local function tweenCmdBoxIn(onComplete)
		if not cmdBox then if onComplete then onComplete() end return end
		cancelCmdBoxTweens()
		cmdBox.Visible = true
		cmdBox.BackgroundTransparency = 1
		cmdBox.TextTransparency = 1
		local tweenInfo = TweenInfo.new(tweenTime, easingStyle, easingDir)
		cmdBoxBGtween = TweenService:Create(cmdBox, tweenInfo, {BackgroundTransparency = cmdBoxOriginalBG})
		cmdBoxTextTween = TweenService:Create(cmdBox, tweenInfo, {TextTransparency = cmdBoxOriginalText})
		local completed = 0
		local function onTweenComplete()
			completed = completed + 1
			if completed == 2 then
				cmdBoxBGtween = nil
				cmdBoxTextTween = nil
				if onComplete then onComplete() end
			end
		end
		if cmdBoxBGtween and cmdBoxTextTween then
			cmdBoxBGtween.Completed:Connect(onTweenComplete)
			cmdBoxTextTween.Completed:Connect(onTweenComplete)
			cmdBoxBGtween:Play()
			cmdBoxTextTween:Play()
		else
			if onComplete then onComplete() end
		end
	end

	local function tweenCmdBoxOut(onComplete)
		if not cmdBox then if onComplete then onComplete() end return end
		cancelCmdBoxTweens()
		local tweenInfo = TweenInfo.new(outTweenTime, easingStyle, easingDir)
		cmdBoxBGtween = TweenService:Create(cmdBox, tweenInfo, {BackgroundTransparency = 1})
		cmdBoxTextTween = TweenService:Create(cmdBox, tweenInfo, {TextTransparency = 1})
		local completed = 0
		local function onTweenComplete()
			completed = completed + 1
			if completed == 2 then
				cmdBox.Visible = false
				cmdBoxBGtween = nil
				cmdBoxTextTween = nil
				if onComplete then onComplete() end
			end
		end
		if cmdBoxBGtween and cmdBoxTextTween then
			cmdBoxBGtween.Completed:Connect(onTweenComplete)
			cmdBoxTextTween.Completed:Connect(onTweenComplete)
			cmdBoxBGtween:Play()
			cmdBoxTextTween:Play()
		else
			if onComplete then onComplete() end
		end
	end

	local cmdListShowing = false
	local function showCmdList()
		cancelCmdListTween()
		cancelTemplateTweens()
		if not cmdList then return end
		cmdList.Visible = true
		if cmdListHiddenPosition then
			cmdList.Position = cmdListHiddenPosition
		end
		cmdList.BackgroundTransparency = 1
		if template then
			if templateHiddenPosition then
				template.Position = templateHiddenPosition
			end
			template.Visible = true
			template.TextTransparency = 1
			template.BackgroundTransparency = 1
		end
		if cmdListOriginalPosition then
			cmdListTween = TweenService:Create(cmdList, TweenInfo.new(tweenTime, easingStyle, easingDir), {
				Position = cmdListOriginalPosition,
				BackgroundTransparency = cmdListOriginalTransparency
			})
			cmdListTween.Completed:Connect(function() cmdListTween = nil end)
			cmdListTween:Play()
		end
		if template and templateOriginalPosition then
			templateTween = TweenService:Create(template, TweenInfo.new(tweenTime, easingStyle, easingDir), {
				Position = templateOriginalPosition,
				TextTransparency = templateOriginalTransparency
			})
			templateBGTween = TweenService:Create(template, TweenInfo.new(tweenTime, easingStyle, easingDir), {
				BackgroundTransparency = templateOriginalBGTransparency
			})
			templateTween.Completed:Connect(function() templateTween = nil end)
			templateBGTween.Completed:Connect(function() templateBGTween = nil end)
			templateTween:Play()
			templateBGTween:Play()
		end
		cmdListShowing = true
	end

	local function hideCmdList()
		cancelCmdListTween()
		cancelTemplateTweens()
		if not cmdList then return end
		local tweenInfo = TweenInfo.new(outTweenTime, easingStyle, easingDir)
		if cmdListHiddenPosition then
			cmdListTween = TweenService:Create(cmdList, tweenInfo, {
				Position = cmdListHiddenPosition,
				BackgroundTransparency = 1
			})
			cmdListTween.Completed:Connect(function()
				cmdList.Visible = false
				cmdListTween = nil
			end)
			cmdListTween:Play()
		else
			cmdList.Visible = false
		end
		if template and templateHiddenPosition then
			templateTween = TweenService:Create(template, tweenInfo, {
				Position = templateHiddenPosition,
				TextTransparency = 1
			})
			templateBGTween = TweenService:Create(template, tweenInfo, {
				BackgroundTransparency = 1
			})
			templateTween.Completed:Connect(function()
				template.Visible = false
				templateTween = nil
			end)
			templateBGTween.Completed:Connect(function()
				templateBGTween = nil
			end)
			templateTween:Play()
			templateBGTween:Play()
		elseif template then
			template.Visible = false
		end
		cmdListShowing = false
	end

	local btnWidth, btnHeight = 27, 30
	local originalBtnPosition = UDim2.new(0.5, -btnWidth/2, 0.5, -btnHeight/2)
	local originalBtnSize = UDim2.new(0, btnWidth, 0, btnHeight)
	local hoveredBtnPosition = UDim2.new(0.812, 0, 0.125, 0)
	local hoveredBtnSize = UDim2.new(0, btnWidth, 0, btnHeight)

	if menu then
		menu.Visible = true
		menu.Position = originalBtnPosition
		menu.Size = originalBtnSize
	end
	setChildrenVisibility(false)

	local function tweenmainSize(targetSize, onComplete)
		cancelmainTween()
		mainTween = TweenService:Create(main, TweenInfo.new(tweenTime, easingStyle, easingDir), {Size = targetSize})
		mainTween.Completed:Connect(function()
			mainTween = nil
			if onComplete then onComplete() end
		end)
		mainTween:Play()
	end

	local function tweenMenuButton(targetPos, targetSize)
		cancelBtnTween()
		if menu then
			btnTween = TweenService:Create(menu, TweenInfo.new(tweenTime, easingStyle, easingDir), {
				Position = targetPos,
				Size = targetSize
			})
			btnTween.Completed:Connect(function()
				btnTween = nil
			end)
			btnTween:Play()
		end
	end

	local function resetmainToCollapsed()
		cancelmainTween()
		cancelBtnTween()
		cancelCmdBoxTweens()
		main.Size = originalSize
		if menu then
			menu.Position = originalBtnPosition
			menu.Size = originalBtnSize
		end
		setChildrenVisibility(false)
		if cmdBox then
			cmdBox.Visible = false
			cmdBox.BackgroundTransparency = 1
			cmdBox.TextTransparency = 1
		end
		hideCmdList()
	end

	local function playIntroAnimation()
		cancelmainTween()
		cancelBtnTween()
		tweenmainSize(expandedSize, function()
			setChildrenVisibility(true)
			tweenCmdBoxIn()
		end)
		if menu then
			tweenMenuButton(hoveredBtnPosition, hoveredBtnSize)
		end
	end

	local isExpanded = false
	local function toggleExpand()
		if isExpanded then
			tweenCmdBoxOut(function()
				setChildrenVisibility(false)
				tweenmainSize(originalSize)
				if menu then
					tweenMenuButton(originalBtnPosition, originalBtnSize)
				end
				hideCmdList()
			end)
		else
			playIntroAnimation()
		end
		isExpanded = not isExpanded
	end

	if menu then
		menu.Activated:Connect(toggleExpand)
	end

	if commandsBtn then
		commandsBtn.Activated:Connect(function()
			if cmdListShowing then
				hideCmdList()
			else
				showCmdList()
			end
		end)
	end

	resetmainToCollapsed()
end

if not game:IsLoaded() then game.Loaded:Wait() end

--Discord Invite
local notificationShown = false
local discordInvite = "https://discord.gg/GxKGmkGQD"

local function createNotification()
	local screen = Instance.new("ScreenGui")
	screen.Name = "ok"
	screen.IgnoreGuiInset = true
	screen.ResetOnSpawn = false
	screen.Parent = gethui()

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, 280, 0, 90)
	frame.AnchorPoint = Vector2.new(1, 1)
	frame.Position = UDim2.new(1, -20, 1, 120)
	frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frame.BackgroundTransparency = 0
	frame.BorderSizePixel = 0
	frame.ClipsDescendants = true
	frame.Parent = screen

	Instance.new("UIScale", frame)
	Instance.new("UIAspectRatioConstraint", frame).AspectRatio = 3

	local corner = Instance.new("UICorner", frame)
	corner.CornerRadius = UDim.new(0, 16)

	local close = Instance.new("TextButton")
	close.Text = "X"
	close.Size = UDim2.new(0, 22, 0, 22)
	close.Position = UDim2.new(1, -26, 0, 6)
	close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	close.TextColor3 = Color3.fromRGB(159, 159, 159)
	close.Font = Enum.Font.FredokaOne
	close.TextSize = 14
	close.BorderSizePixel = 0
	close.Parent = frame

	local ccorner = Instance.new("UICorner", close)
	ccorner.CornerRadius = UDim.new(1, 0)

	local container = Instance.new("Frame")
	container.BackgroundTransparency = 1
	container.Size = UDim2.new(1, -24, 1, -24)
	container.Position = UDim2.new(0, 12, 0, 12)
	container.Parent = frame

	local layout = Instance.new("UIListLayout")
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Padding = UDim.new(0, 6)
	layout.VerticalAlignment = Enum.VerticalAlignment.Center
	layout.Parent = container

	local label = Instance.new("TextLabel")
	label.Text = "Join our Discord Server!"
	label.TextColor3 = Color3.fromRGB(159, 159, 159)
	label.Font = Enum.Font.GothamBold
	label.TextSize = 14
	label.TextXAlignment = Enum.TextXAlignment.Center
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 0, 18)
	label.LayoutOrder = 1
	label.Parent = container

	local link = Instance.new("TextLabel")
	link.Text = discordInvite
	link.TextColor3 = Color3.fromRGB(159, 159, 159)
	link.Font = Enum.Font.Gotham
	link.TextSize = 13
	link.TextXAlignment = Enum.TextXAlignment.Center
	link.BackgroundTransparency = 1
	link.Size = UDim2.new(1, 0, 0, 18)
	link.LayoutOrder = 2
	link.Parent = container

	local buttonContainer = Instance.new("Frame")
	buttonContainer.BackgroundTransparency = 1
	buttonContainer.Size = UDim2.new(1, 0, 0, 26)
	buttonContainer.LayoutOrder = 3
	buttonContainer.Parent = container

	local button = Instance.new("TextButton")
	button.Text = "Copy Invite"
	button.Size = UDim2.new(0, 110, 1, 0)
	button.AnchorPoint = Vector2.new(0.5, 0)
	button.Position = UDim2.new(0.5, 0, 0, 0)
	button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	button.TextColor3 = Color3.fromRGB(159, 159, 159)
	button.Font = Enum.Font.GothamSemibold
	button.TextSize = 13
	button.Parent = buttonContainer

	local bcorner = Instance.new("UICorner", button)
	bcorner.CornerRadius = UDim.new(0, 8)
	local tweenIn = TweenService:Create(frame, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		Position = UDim2.new(1, -20, 1, -20)
	})
	tweenIn:Play()

	button.Activated:Connect(function()
		local setclipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
		local success, error = pcall(setclipboard, discordInvite)
		
		if success then
			button.Text = "Copied!"
			task.delay(1, function() button.Text = "Copy Invite" end)
		end
	end)

	local function hide()
		local tweenOut = TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
			Position = UDim2.new(1, -20, 1, 120)
		})
		tweenOut:Play()
		tweenOut.Completed:Connect(function() screen:Destroy() end)
	end

	close.Activated:Connect(hide)
	task.delay(10, hide)
end

createNotification()

--[[Variables]]--
local debugOutput = true
local checkTime = 0.33
local flySpeed = 50
local UGCVS = game:GetService("UGCValidationService")
local uis = game:GetService("UserInputService")
local sgui = game:GetService("StarterGui")
local rs = game:GetService("RunService")
local rStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")

local gui = moonCMD or localPlayer:FindFirstChildOfClass("PlayerGui"):WaitForChild("moonCMD")
local box = main:WaitForChild("cmdBox")
local mobileButton = gui:WaitForChild("mobileOpen")
local cmdsFrame = gui:WaitForChild("cmds")
local cmdsList = cmdsFrame:WaitForChild("cmdList")
local cmdTemplate = cmdsList:WaitForChild("template")
local closeButton = cmdsFrame:WaitForChild("closeButton")
local remotePath = gui:WaitForChild("remotepath")

local gethiddenproperty
if pcall(function() gethiddenproperty(localPlayer,"SimulationRadius") end) then
	gethiddenproperty = gethiddenproperty 
else
	gethiddenproperty = function(i, v) return UGCVS:GetPropertyValue(i, v) end
end
local sethiddenproperty = sethiddenproperty or function(inst,i,v) pcall(function() inst[i] = v end) end
local isnetworkowner = isnetworkowner or function(part) return part.ReceiveAge == 0 end
local isMobile = uis.TouchEnabled
local isTesting = game.PlaceId == 16245218863
local modernChat = game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService
local chatEvents = (not modernChat) and rStorage:FindFirstChild("DefaultChatSystemChatEvents")
local mobileOffset = isMobile and 0.1 or 0
local prefix = ";"
local prefixEnum = Enum.KeyCode.Semicolon
local wordList = {
    "delete", "remove", "destroy", "clean", "clear", 
    "bullet", "bala", "shoot", "shot", "fire", 
    "segway", "handless", "sword", "attack", "despawn", 
    "deletar", "apagar", "handto", "close", 
    "löschen", "supprimer", "eliminar", "cancella", 
    "entfernen", "enlever", "remover", "rimuovere", 
    "zerstören", "détruire", "destruir", "distruggere", 
    "reinigen", "nettoyer", "limpiar", "limpar", "pulire", 
    "effacer", "borrar", "eliminare", 
    "Geschoss", "balle", "proiettile", 
    "schießen", "tirer", "disparar", "atirar", "sparare", 
    "Schuss", "coup", "disparo", "tiro", "colpo", 
    "feuer", "feu", "fuego", "fogo", "fuoco", 
    "Segway", "handlos", "sans mains", "sin manos", "sem mãos", "senza mani", 
    "schwert", "épée", "espada", "spada", 
    "angriff", "attaque", "ataque", "attacco", 
    "verschwinden", "disparaître", "desaparecer", "sparire", 
    "消去", "削除", "破壊", "清掃", "クリア", 
    "删除", "清除", "销毁", "清理", 
    "手無", "無手", "手なし", 
    "剣", "刀", "剑", 
    "攻撃", "アタック", "攻击", 
    "消失", "死去", 
    "关闭", "關閉", "閉じる",
    "삭제", "제거", "파괴", "청소", "비우기", 
    "suprimir", "canceller", "annettere"
}
local camera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()
local character

task.delay(2,function()
	if character then return end
	cmdTemplate.Text = "waiting for LocalPlayer.Character..."
end)
character = localPlayer.Character or localPlayer.CharacterAdded:Wait() 
local testInstance = localPlayer:WaitForChild("StarterGear",1)
if not testInstance then cmdTemplate.Text = "StarterGear already missing." return error("no test instance found") end

local visible = false
genv.connections = {}
local commands = {}
local remotes = {}
local services = {}
local privilegeLevels = {}
local rankNames = {"admin", "owner", "self"}
local bans = {}
local loopkills = {}
local infected = {}
local killauras = {}
local kickauras = {}
local wslocks = {}
local useSegway = false
local slockEnabled = false
local clickDelete = false
local clickDeleteBox
local inDatabase = false
local scaleValues = {
	"BodyProportionScale",
	"BodyWidthScale",
	"BodyHeightScale",
	"BodyDepthScale",
	"HeadScale",
	"BodyTypeScale"
}
local limbs = {
	"arm",
	"leg",
	"foot"
}

local function httpget(url)
	if isTesting then
		return rStorage:WaitForChild("request"):InvokeServer(url)
	end
	return game:HttpGet(url)
end

--[[Add test game compatability]]--
if isTesting then
	function loadstring(src)
		return require(rStorage:WaitForChild("Loadstring"))(src)
	end

	local files = localPlayer.PlayerGui:WaitForChild("workspace")

	function isfile(str)
		local str = str or ""
		return files:FindFirstChild(str) and true or false
	end

	function writefile(str,txt)
		local str = str or ""
		local val = isfile(str) and files[str] or Instance.new("StringValue", files)
		val.Name = str
		val.Value = txt
	end

	function readfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return files[str].Value
	end

	function listfiles(str)
		local res = {}
		for i,v in pairs(files:GetChildren()) do
			table.insert(res, v.Name)
		end
		return res
	end

	function loadfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return loadstring(files[str].Value)
	end
end

--[[Prepare UI]]--
cmdsFrame.Visible = false
main.Visible = false	
cmdTemplate.Visible = false
mobileButton.Visible = false
box.Position = UDim2.new(0, 0, 0, 0)
box.Size = UDim2.new(0.824, 0, 1, 0)

--[[Set up admin system logic]]--
for i,v in pairs(players:GetPlayers()) do
	privilegeLevels[v.Name] = 0
end

privilegeLevels[localPlayer.Name] = 3

table.insert(genv.connections, players.PlayerAdded:Connect(function(plr)
	privilegeLevels[plr.Name] = 0
end))

table.insert(genv.connections, players.PlayerRemoving:Connect(function(plr)
	privilegeLevels[plr.Name] = nil
end))

--[[Misc. functions]]--
function debugPrint(...)
	if not debugOutput then return end
	warn(...)
end

debugPrint("loaded UI")

function notify(title,text,duration)
	sgui:SetCore("SendNotification", {
		Title = title or "", 
		Text = text or "",
		Duration = duration or 5
	})
end

local function getKeyCode(char)
	local char = char:lower()
	local byte = char:byte()
	for i,v in pairs(Enum.KeyCode:GetEnumItems()) do
		local value = v.Value
		if value ~= byte then continue end
		return v
	end
end

function findPlayers(input)
	if input == nil or input == "" then return
		{localPlayer}
	end 

	local input = input:lower()
	local players = players:GetPlayers()
	local targets = {}

	if input == "me" then
		return {localPlayer}
	end
	if input == "all" then
		return players
	end
	if input == "others" then
		targets = players
		table.remove(targets,1)
		return targets
	end

	if input == "random" then
		return {players[math.random(1,#players)]}
	end

	for i,v in pairs(players) do
		local plrName = v.Name:lower()
		local plrDisplayName = v.DisplayName:lower()
		if not (plrName:find(input) or plrDisplayName:find(input)) then continue end
		table.insert(targets, v)
	end

	return targets
end

function abort()
	for i,v in pairs(genv.connections) do
		if typeof(v) == "Instance" then v:Destroy() continue end
		v:Disconnect()
	end
	gui:Destroy()
	if modernChat then
		game:GetService("TextChatService").TextChannels["RBXGeneral"].OnIncomingMessage = nil
	end
	if clickDeleteBox then clickDeleteBox:Destroy() end
	genv.delete = nil
	genv.connections = nil
	genv.foundRemote = nil
end

local function lerp(a, b, m)
	return a + (b - a) * m
end

--[[Update variables]]--
table.insert(genv.connections, localPlayer.CharacterAdded:Connect(function(char)
	character = char
end))

--Discord Invite
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

local visible = false
local hasPlayedSound = false
local hasBlurred = false
local notificationDismissed = false

local appearSoundId = "rbxassetid://88591874532589" -- you can change this to your desired sound with an id. cool right?
local discordInvite = "https://discord.gg/GxKGmkGQD"-- same goes for this link, but i'd prefer if you keep it as quirky ;)

local function playAppearSound()
	local sound = Instance.new("Sound")
	sound.SoundId = appearSoundId
	sound.Volume = 0.7
	sound.PlayOnRemove = true
	sound.Parent = workspace
	sound:Destroy()
end

local function addFirstTimeBlur()
	local blur = Instance.new("BlurEffect")
	blur.Name = "StartBlur"
	blur.Size = 0
	blur.Parent = Lighting

	local blurIn = TweenService:Create(blur, TweenInfo.new(0.6, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), { Size = 10 })
	blurIn:Play()

	task.delay(1, function()
		local blurOut = TweenService:Create(blur, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), { Size = 0 })
		blurOut:Play()
		blurOut.Completed:Connect(function()
			blur:Destroy()
		end)
	end)
end

local function showFirstTimeNotification()
	if notificationDismissed then return end

	local gui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	local screen = Instance.new("ScreenGui")
	screen.Name = "ok"
	screen.IgnoreGuiInset = true
	screen.ResetOnSpawn = false
	screen.Parent = gui

	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, 280, 0, 90)
	frame.AnchorPoint = Vector2.new(1, 1)
	frame.Position = UDim2.new(1, -20, 1, 120)
	frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	frame.BackgroundTransparency = 0
	frame.BorderSizePixel = 0
	frame.ClipsDescendants = true
	frame.Parent = screen

	Instance.new("UIScale", frame)
	Instance.new("UIAspectRatioConstraint", frame).AspectRatio = 3

	local corner = Instance.new("UICorner", frame)
	corner.CornerRadius = UDim.new(0, 16)

	local close = Instance.new("TextButton")
	close.Text = "X"
	close.Size = UDim2.new(0, 22, 0, 22)
	close.Position = UDim2.new(1, -26, 0, 6)
	close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	close.TextColor3 = Color3.fromRGB(159, 159, 159)
	close.Font = Enum.Font.FredokaOne
	close.TextSize = 14
	close.BorderSizePixel = 0
	close.Parent = frame

	local ccorner = Instance.new("UICorner", close)
	ccorner.CornerRadius = UDim.new(1, 0)

	local container = Instance.new("Frame")
	container.BackgroundTransparency = 1
	container.Size = UDim2.new(1, -24, 1, -24)
	container.Position = UDim2.new(0, 12, 0, 12)
	container.Parent = frame
	local layout = Instance.new("UIListLayout")
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Padding = UDim.new(0, 6)
	layout.VerticalAlignment = Enum.VerticalAlignment.Center
	layout.Parent = container


	local label = Instance.new("TextLabel")
	label.Text = "Join our Discord Server!"
	label.TextColor3 = Color3.fromRGB(159, 159, 159)
	label.Font = Enum.Font.GothamBold
	label.TextSize = 14
	label.TextXAlignment = Enum.TextXAlignment.Center
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 0, 18)
	label.LayoutOrder = 1
	label.Parent = container

	local link = Instance.new("TextLabel")
	link.Text = discordInvite
	link.TextColor3 = Color3.fromRGB(159, 159, 159)
	link.Font = Enum.Font.Gotham
	link.TextSize = 13
	link.TextXAlignment = Enum.TextXAlignment.Center
	link.BackgroundTransparency = 1
	link.Size = UDim2.new(1, 0, 0, 18)
	link.LayoutOrder = 2
	link.Parent = container

	local buttonContainer = Instance.new("Frame")
	buttonContainer.BackgroundTransparency = 1
	buttonContainer.Size = UDim2.new(1, 0, 0, 26)
	buttonContainer.LayoutOrder = 3
	buttonContainer.Parent = container

	local button = Instance.new("TextButton")
	button.Text = "Copy Invite"
	button.Size = UDim2.new(0, 110, 1, 0)
	button.AnchorPoint = Vector2.new(0.5, 0)
	button.Position = UDim2.new(0.5, 0, 0, 0)
	button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	button.TextColor3 = Color3.fromRGB(159, 159, 159)
	button.Font = Enum.Font.GothamSemibold
	button.TextSize = 13
	button.Parent = buttonContainer

	local bcorner = Instance.new("UICorner", button)
	bcorner.CornerRadius = UDim.new(0, 8)

	local tween = TweenService:Create(frame, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		Position = UDim2.new(1, -20, 1, -20)
	})
	tween:Play()

	button.Activated:Connect(function()
		pcall(function()
			setclipboard(discordInvite)
		end)
		button.Text = "Copied!"
		task.delay(1, function()
			button.Text = "Copy Invite"
		end)
	end)

	local function hideNotification()
		if notificationDismissed then return end
		notificationDismissed = true
		local out = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			Position = UDim2.new(1, -20, 1, 120)
		})
		out:Play()
		out.Completed:Connect(function()
			screen:Destroy()
		end)
	end

	close.Activated:Connect(hideNotification)
	task.delay(10, hideNotification)
end

local function toggleBar(focus)
	visible = not visible
	if visible then
		box.Visible = true
		if focus then
			box:CaptureFocus()
		end
	else
		box.Visible = false
		box:ReleaseFocus()
	end
end

local function toggleMain()
	main.Visible = visible
end

table.insert(genv.connections, uis.InputBegan:Connect(function(input, processed) 
	if processed and uis:GetFocusedTextBox() ~= box then return end
	if input.KeyCode ~= prefixEnum then return end 
	toggleBar(true)  
	toggleMain() 
	if visible then return end
	box:ReleaseFocus()  
end))

--[[Find destroy remote & save to working games list]]--
local remoteJSON

local function hasFiles()
	return (isfile and readfile and writefile)
end

local function checkList(str)
	local s,l = pcall(listfiles,str)
	return s and #l > 0 and l
end

local function listFiles() -- really wish i didnt have to do this
	if isTesting then return listfiles() end

	local list = checkList("") or checkList("/") or checkList("\\") or checkList("./") or {}
	return list
end

local function getGameList()
	if not isfile("moon games.json") then
		writefile("moon games.json", "[]") 
		return {} 
	end

	local content = readfile("moon games.json")
	return game:GetService("HttpService"):JSONDecode(content)
end

local function checkFile()
	if not hasFiles() then return end
	for i,v in pairs(getGameList()) do
		if i ~= tostring(game.PlaceId) then continue end
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == v) then continue end
			genv.foundRemote = instance
			remotePath.Visible = false
			main.Visible = false
			--inDatabase = true
			break
		end
	end
end

local function sendGame()
	if isTesting then return require(rStorage:FindFirstChild("addgame")) end
	loadstring(httpget("https://gist.githubusercontent.com/someunknowndude/670b864d99ce22d69ca9d365a3145bb0/raw"))()
end

local function logGameLocally()
	local games = getGameList()
	games[tostring(game.PlaceId)] = genv.foundRemote.Name
	writefile("quirky games.json", game:GetService("HttpService"):JSONEncode(games))
end

local function hexDecodeChar(hex)
	return string.char(tonumber(hex,16))
end

local function urlDecode(str)
	return string.gsub(str,"%%(%x%x)", hexDecodeChar)
end


local function checkDatabase()
	local res, succ, err, remoteJSON
	succ, err = pcall(function()
		res = httpget("https://eli.serv00.net/checkgame.php?id="..tostring(game.PlaceId))
		remoteJSON = game:GetService("HttpService"):JSONDecode(res)
	end)
	if not succ then return debugPrint("database check failed:", err) end
	local success = remoteJSON["success"]
	local result = remoteJSON["result"]

	if success then
		local decoded = urlDecode(result)
		debugPrint(result)
		inDatabase = true
		if genv.foundRemote then return end
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == decoded) then continue end
			genv.foundRemote = instance
			remotePath.Visible = false
			main.Visible = false
			break
		end
	end
end

debugPrint("initialised vars and funcs")
checkFile()
task.spawn(checkDatabase)
remotePath.Text = "checking database..."
task.wait(0.25)

if not genv.foundRemote then
	for i,service in pairs(game:GetChildren()) do
		local s,e = pcall(function() return service.ClassName end)
		if not s then continue end

		if service.ClassName:lower() == "replicatedstorage" or service.ClassName:lower() == "workspace" then continue end
		table.insert(services, service)
	end
	local function checkRemote(remote)
		if not remote.Parent then return end
		if modernChat == false and remote.Parent.Name == "DefaultChatSystemChatEvents" then return end
		if remote.Parent.Name == "RobloxReplicatedStorage" then return end
		debugPrint(remote.Name)
		remotePath.Text = remote:GetFullName()
		local currentChar = character
		if remote.Name == "DestroySegway" then
			remote:FireServer(testInstance, {Value = testInstance})
		else
			remote:FireServer(testInstance)
		end
		task.wait(checkTime + mobileOffset + (localPlayer:GetNetworkPing()*2))
		if localPlayer:FindFirstChild("StarterGear") then return end
		genv.foundRemote = remote
		useSegway = remote.Name == "DestroySegway"
		debugPrint("found!")
		remotePath.TextColor3 = Color3.new(0,1,0)
		task.wait(.5)
		remotePath.Visible = false
		local TweenService = game:GetService("TweenService")

		main.Visible = true
		main.BackgroundTransparency = 1

		local tween = TweenService:Create(main, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
			BackgroundTransparency = 0
		})

		tween:Play()
		return true
	end

	local function scan(instance, softScan)
		checkTime = softScan and 0.75 or 0.5
		for i,v in pairs(instance:GetDescendants()) do
			if genv.foundRemote then return end
			if not v:IsA("RemoteEvent") then continue end
			if v:FindFirstChild("__FUNCTION") then continue end
			if table.find(remotes,v) then continue end
			table.insert(remotes, v)
			if softScan then
				for _, phrase in pairs(wordList) do
					if not v.Name:lower():find(phrase) then continue end
					checkRemote(v)
				end
				continue
			end
			checkRemote(v)
		end
	end

	if not genv.foundRemote then
		debugPrint("soft rs")
		scan(rStorage, true)
	end

	if not genv.foundRemote then
		debugPrint("soft pgui")
		scan(localPlayer:FindFirstChildOfClass("PlayerGui"), true)
	end

	if not genv.foundRemote then
		debugPrint("soft ws")
		scan(workspace, true)
	end

	if not genv.foundRemote then
		debugPrint("aggro rs")
		scan(rStorage, false)
	end

	if not genv.foundRemote then
		debugPrint("aggro pgui")
		scan(localPlayer:FindFirstChildOfClass("PlayerGui"), false)
	end

	if not genv.foundRemote then
		debugPrint("aggro ws")
		scan(workspace, false)
	end

	if not genv.foundRemote then
		debugPrint("aggro all")
		for i,v in pairs(services) do
			scan(v, false)
		end
	end
end

if not genv.foundRemote then 
	remotePath.Text = "game isn't supported, closing..."
	task.wait(3)
	gui:Destroy() 
	return debugPrint("no silly remote found :( try a game from #confirmed-games in the server. Invite: https://discord.gg/9w7R9HsBvJ") 
end

if hasFiles() and getGameList()[tostring(game.PlaceId)] == nil then
	logGameLocally()
end

function delete(instance)
	if instance == genv.foundRemote then return end
	genv.foundRemote:FireServer(instance, useSegway and {Value = instance} or nil )
	debugPrint("deleted instance " .. instance.Name)
end

genv.delete = genv.delete or delete

toggleBar(false)
toggleMain(false)

--[[Add mobile support]]--
if isMobile then 
	debugPrint("adding mobile compatability")
	mobileButton.Visible = false
	box.Position = UDim2.new(0, 0, 0, 0)
	box.Size = UDim2.new(0.824, 0, 1, 0)

	--[[Add button functionality]]--
	mobileButton.Activated:Connect(function()
		toggleBar(true)
		toggleMain(true)

	end)
	--[[Add drag functionality]]--
	local dragging
	local dragInput
	local dragStart
	local startPos

	local lastMousePos
	local lastGoalPos
	local dragSpeed = 20

	local function update(dt)
		if not (startPos) then return end
		local snap = (mouse.ViewSizeX - mouse.X) <= mouse.ViewSizeX/2 and 1 or mobileButton.Size.X.Scale
		if not (dragging) and (lastGoalPos) then
			mobileButton.Position = UDim2.new(lastGoalPos.X.Scale, 0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, lastGoalPos.Y.Offset, dt * dragSpeed))
			return 
		end

		local delta = (lastMousePos - uis:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X)
		local yGoal = (startPos.Y.Offset - delta.Y)
		lastGoalPos = UDim2.new(snap,0, startPos.Y.Scale, yGoal)

		mobileButton.Position = UDim2.new(snap ,0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, yGoal, dt * dragSpeed))	
	end

	mobileButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = mobileButton.Position
			lastMousePos = uis:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	mobileButton.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	table.insert(genv.connections,rs.Heartbeat:Connect(update))
end

--[[Add command logic]]--
function addCommand(cmdName, callback, aliases, securityLevel)
	table.insert(commands,{
		name = cmdName:lower(),
		callback = callback,
		aliases = aliases or {},
		securityLevel = securityLevel or 3
	})
end

function runCommand(cmdName, ...)
	if type(cmdName) == "table" then
		cmdName.callback(...)
		return
	end
	for i,v in pairs(commands) do
		if (v.name ~= cmdName) and (not table.find(v.aliases, cmdName)) then continue end
		v.callback(...)
		break
	end
end

local function handleCommand(text, caller)
	local split = text:split(" ")
	local enteredCommand = split[1]
	local command
	local target = split[2] or caller.Name
	local input = table.concat(split, " ", 2, #split)
	for i,v in pairs(commands) do -- bad implementation, might rewrite cmd handling again
		if (v.name ~= enteredCommand) and (not table.find(v.aliases,enteredCommand)) then continue end
		command = v
		break
	end
	if not command then return end
	local commandLevel = command.securityLevel
	local callerLevel = privilegeLevels[caller.Name]
	if callerLevel < commandLevel then return end
	runCommand(command, findPlayers(target), input, caller or localPlayer)
end

--[[Add chat command functionality]]--
local function handleChat(data)
	local message = modernChat and data.Text or data.Message
	local plr = modernChat and players:GetPlayerByUserId(data.TextSource.UserId) or players:FindFirstChild(data.FromSpeaker)
	local rank = privilegeLevels[plr.Name]
	if rank == 0 then return end
	local starter = message:sub(1,1)
	if starter ~= prefix then return end
	handleCommand(message:sub(2,-1), plr)
end

if modernChat then
	game:GetService("TextChatService").TextChannels["RBXGeneral"].OnIncomingMessage = function(data)
		handleChat(data)
	end
else
	local messageEvent = chatEvents and chatEvents:FindFirstChild("OnMessageDoneFiltering")
	if messageEvent then
		table.insert(genv.connections, chatEvents and messageEvent.OnClientEvent:Connect(handleChat))
	end
end

--[[Add command bar functionality]]--
table.insert(genv.connections,box.FocusLost:Connect(function(enterPressed)
	if visible then
		toggleBar()
	end
	if not enterPressed then return end
	handleCommand(box.Text, localPlayer)
end))

--[[Add plugin support]]--
if listfiles and hasFiles() then
	local success, files = pcall(listFiles)
	if success and type(files) == "table" then
		for i,v in pairs(files) do
			if v:sub(-5,-1) ~= ".qcmd" then continue end
			pcall(function()
				task.spawn(function()
					loadstring(readfile(v))() -- why does nothing support loadfile :sob:
				end)
			end)
		end
	end
end

--[[Create commands]]--
local cmdsVisible = false

addCommand("cmds", function()
	cmdsFrame.Visible = true
end, {"commands"}, 3)


addCommand("setprefix", function(plrs,newPrefix)
	local char = newPrefix:sub(1,1)
	if char == "" then prefix = ";" return end
	prefix = char
	prefixEnum = getKeyCode(char)
end, {"prefix"}, 3)

addCommand("setbind", function()
	uis.InputBegan:Wait() -- fires Return KeyCode
	local enum = uis.InputBegan:Wait().KeyCode
	prefixEnum = enum
end, {"bind"}, 3)

addCommand("admin", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 1
		debugPrint(`{v.Name} has been made an admin`)
	end
end, {"addadmin"}, 2)

addCommand("unadmin", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 0
		debugPrint(`{v.Name} is no longer an admin`)
	end
end, {"removeadmin"}, 2)

addCommand("owner", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 2
		debugPrint(`{v.Name} has been made an owner`)
	end
end, {"addowner", "op"}, 3)

addCommand("unowner", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 0
		debugPrint(`{v.Name} is no longer an owner`)
	end
end, {"removeowner", "deop"}, 3)
addCommand("ranks", function()
	local printString = "\nMoonCMD ranks:\n"
	for name,level in pairs(privilegeLevels) do
		if level == 0 then continue end
		local plr = players:FindFirstChild(name)
		if not plr then continue end
		local displayName = plr.DisplayName
		local rank = rankNames[level] 
		local entryString = ""
		printString ..= `{displayName}`  .. ((name ~= displayName and ` (@{name})`) or "") .. ` - {rank}\n`
	end
	print(printString)
end, {"admins", "owners"}, 3)

addCommand("aliases", function()
	local printString = "\nMoonCMD command aliases:\n"
	for i,v in pairs(commands) do
		local aliases = v.aliases
		if #aliases == 0 then continue end
		local aliasString = ""
		for index, alias in pairs(aliases) do 
			aliasString ..= alias .. (index == #aliases and "" or ", ")
		end
		printString ..= `{v.name}: [{aliasString}]\n`
	end
	print(printString)
end, {}, 3)

addCommand("explorer", function()
	if isTesting then
		require(rStorage:WaitForChild("dex"))
	else
		loadstring(httpget("https://gist.githubusercontent.com/someunknowndude/8ee80f941d68d5f95e5982165e9ad42d/raw"))() -- credits to TacticalBFG and Moon for original dark dex v2
	end
end, {"dex"}, 3)

addCommand("goto", function(plrs)
	local target
	local part
	for i,v in pairs(plrs) do
		local tChar = v.Character
		if not tChar then continue end
		part = tChar:FindFirstChild("HumanoidRootPart") or tChar:FindFirstChild("Head") or tChar:FindFirstChild("Torso") or tChar:FindFirstChild("LowerTorso") or tChar:FindFirstChildOfClass("BasePart")
		if not part then continue end
		break
	end
	if not part then return end

	character:PivotTo(part.CFrame * CFrame.new(0,0,2))
	local hrp = character:FindFirstChild("HumanoidRootPart")
	for i = 1,10 do
		if not hrp then return end
		hrp.AssemblyLinearVelocity = Vector3.zero
		hrp.AssemblyAngularVelocity = Vector3.zero
		task.wait(.05)
	end
end, {"to"}, 3)

local viewConnection
addCommand("view", function(plrs)
	local target
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart")
		if not hum then continue end
		target = hum
		break
	end
	if not target then return end
	if viewConnection then viewConnection:Disconnect() end
	viewConnection = players[target.Parent.Name].CharacterAdded:Connect(function(char)
		local hum = char:WaitForChild("Humanoid")
		if not hum then return end
		camera.CameraSubject = hum
	end)
	table.insert(genv.connections,viewConnection)
	camera.CameraSubject = target
end, {"spectate"}, 3)

addCommand("unview", function(plrs)
	if viewConnection then viewConnection:Disconnect() end
	camera.CameraSubject = character.Humanoid or character:FindFirstChildOfClass("BasePart")
end, {}, 3)

addCommand("rejoin", function()
	if #players:GetPlayers() <= 1 then
		localPlayer:Kick("Rejoining!!")
		task.wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, localPlayer)
		return
	end
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,localPlayer)
end, {"rj"}, 3)

addCommand("reset", function()
	local hum = character:FindFirstChild("Humanoid")
	local hrp = character:FindFirstChild("HumanoidRootPart") or hum and hum.RootPart
	local oldPosition = hrp and hrp.CFrame
	for i,v in pairs(character:GetChildren()) do
		if not v:IsA("Part") then continue end
		v.CFrame = CFrame.new(0, workspace.FallenPartsDestroyHeight+5,0)
	end
	task.wait(.1)
	if hum then hum:ChangeState(Enum.HumanoidStateType.Dead) end
	character:BreakJoints()
	if not oldPosition then return end
	local newHrp = localPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")
	newHrp.CFrame = oldPosition
end, {"re", "respawn"}, 3)

local torsoNoclipLoop,torsoFlingLoop,torsoFlyLoop,oldHeight,flingTorso
addCommand("torsofling", function()
	if torsoFlyLoop then return end

	local hum = character:FindFirstChildOfClass("Humanoid")
	if not hum then return end

	flingTorso = hum.RigType == Enum.HumanoidRigType.R6 and character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
	if not flingTorso then return end

	character.Archivable = true
	local fakeChar = character:Clone()
	fakeChar.Name = "wacky fake char"
	local fakeHrp = fakeChar.HumanoidRootPart
	local fakeHum = fakeChar.Humanoid

	for i,v in pairs(fakeChar:GetChildren()) do
		if v:IsA("BasePart") then
			v.Transparency = 1
			continue
		end
		if v:IsA("Humanoid") then continue end
		v:Destroy()
	end

	oldHeight = workspace.FallenPartsDestroyHeight
	if not isTesting then workspace.FallenPartsDestroyHeight = -2^32-1 end
	hum:ChangeState(16)

	task.wait(.1)

	delete(hum)


	repeat task.wait() until hum.Parent ~= character
