local Players = game:GetService("Players")
local player = Players.LocalPlayer

local MoonHub = {}
MoonHub.__index = MoonHub

function MoonHub.new(name)
    local self = setmetatable({}, MoonHub)
    self.Name = name or "Moon Hub"
    self.Gui = Instance.new("ScreenGui")
    self.Gui.Name = self.Name .. "Admin"
    self.Gui.ResetOnSpawn = false
    self.Gui.Parent = player:WaitForChild("PlayerGui")

    self.Main = Instance.new("Frame")
    self.Main.Size = UDim2.new(0, 520, 0, 360)
    self.Main.Position = UDim2.new(0.5, -260, 0.5, -180)
    self.Main.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
    self.Main.BorderSizePixel = 0
    self.Main.Parent = self.Gui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = self.Main

    local top = Instance.new("Frame")
    top.Size = UDim2.new(1, 0, 0, 46)
    top.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
    top.BorderSizePixel = 0
    top.Parent = self.Main

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -20, 1, 0)
    title.BackgroundTransparency = 1
    title.Text = self.Name
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 20
    title.Parent = top

    local content = Instance.new("Frame")
    content.Size = UDim2.new(1, 0, 1, -46)
    content.Position = UDim2.new(0, 0, 0, 46)
    content.BackgroundTransparency = 1
    content.Parent = self.Main

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -20, 0, 24)
    label.Position = UDim2.new(0, 10, 0, 12)
    label.BackgroundTransparency = 1
    label.Text = "Painel administrativo"
    label.TextColor3 = Color3.fromRGB(220, 220, 220)
    label.Font = Enum.Font.Gotham
    label.TextSize = 16
    label.Parent = content

    local button1 = Instance.new("TextButton")
    button1.Size = UDim2.new(0, 160, 0, 36)
    button1.Position = UDim2.new(0, 10, 0, 50)
    button1.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
    button1.TextColor3 = Color3.fromRGB(18, 18, 18)
    button1.Text = "Kick jogador"
    button1.Font = Enum.Font.GothamBold
    button1.TextSize = 14
    button1.BorderSizePixel = 0
    button1.Parent = content

    local corner1 = Instance.new("UICorner")
    corner1.CornerRadius = UDim.new(0, 8)
    corner1.Parent = button1

    local button2 = Instance.new("TextButton")
    button2.Size = UDim2.new(0, 160, 0, 36)
    button2.Position = UDim2.new(0, 180, 0, 50)
    button2.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
    button2.TextColor3 = Color3.fromRGB(18, 18, 18)
    button2.Text = "Banir jogador"
    button2.Font = Enum.Font.GothamBold
    button2.TextSize = 14
    button2.BorderSizePixel = 0
    button2.Parent = content

    local corner2 = Instance.new("UICorner")
    corner2.CornerRadius = UDim.new(0, 8)
    corner2.Parent = button2

    return self
end

local library = MoonHub.new("Moon Hub")
