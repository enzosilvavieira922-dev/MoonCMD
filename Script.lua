-- MoonCMD Advanced (Estilo QuirkyCMD)
local MoonCMD = {}
MoonCMD.Prefix = ";"
MoonCMD.Commands = {}
MoonCMD.BannedPlayers = {} -- Tabela para armazenar bans permanentes na sessão

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Lighting = game:GetService("Lighting")

-- Criando a CmdBar (Barra de Comandos Visual)
local ScreenGui = Instance.new("ScreenGui")
local CmdBar = Instance.new("TextBox")

ScreenGui.Name = "MoonCMDBars"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

CmdBar.Name = "CmdBar"
CmdBar.Parent = ScreenGui
CmdBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CmdBar.Position = UDim2.new(0.5, -250, 0, -50) -- Começa escondida no topo
CmdBar.Size = UDim2.new(0, 500, 0, 40)
CmdBar.Font = Enum.Font.SourceSansBold
CmdBar.Text = ""
CmdBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdBar.TextSize = 18
CmdBar.PlaceholderText = "Digite um comando do MoonCMD aqui..."
CmdBar.Visible = true

-- Alternar visibilidade da CmdBar com a tecla ";"
game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.Semicolon then
        if CmdBar.Position.Y.Offset < 0 then
            CmdBar:TweenPosition(UDim2.new(0.5, -250, 0, 20), "Out", "Quad", 0.3, true)
            CmdBar:CaptureFocus()
            task.wait(0.05)
            CmdBar.Text = "" -- Limpa o ";" digitado
        else
            CmdBar:TweenPosition(UDim2.new(0.5, -250, 0, -50), "In", "Quad", 0.3, true)
            CmdBar:ReleaseFocus()
        end
    end
end)

-- Função de Notificação Integrada
local function notify(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 4
    })
end

-- Função para achar jogador por nome parcial (ex: "vini" encontra "Vinicius")
local function findPlayer(namePart)
    if not namePart or namePart == "" then return nil end
    if namePart:lower() == "me" then return LocalPlayer end
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Name:lower():sub(1, #namePart) == namePart:lower() or player.DisplayName:lower():sub(1, #namePart) == namePart:lower() then
            return player
        end
    end
    return nil
end

-- Registrar comandos
function MoonCMD.AddCommand(name, callback)
    MoonCMD.Commands[name:lower()] = callback
end

-- Processador principal
local function runCommand(rawInput)
    local args = {}
    for word in rawInput:gmatch("%S+") do
        table.insert(args, word)
    end
    
    local cmdName = table.remove(args, 1)
    if not cmdName then return end
    if cmdName:sub(1, #MoonCMD.Prefix) == MoonCMD.Prefix then
        cmdName = cmdName:sub(#MoonCMD.Prefix + 1)
    end
    cmdName = cmdName:lower()
    
    if MoonCMD.Commands[cmdName] then
        pcall(function()
            MoonCMD.Commands[cmdName](args)
        end)
    else
        notify("MoonCMD", "Comando desconhecido: " .. cmdName)
    end
end

-- Ouvinte da CmdBar ao apertar Enter
CmdBar.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        runCommand(CmdBar.Text)
        CmdBar:TweenPosition(UDim2.new(0.5, -250, 0, -50), "In", "Quad", 0.3, true)
    end
end)

-- Ouvinte do chat padrão
LocalPlayer.Chatted:Connect(function(msg)
    if msg:sub(1, #MoonCMD.Prefix) == MoonCMD.Prefix then
        runCommand(msg)
    end
end)

-- Monitor de Ban Permanente (Simulado localmente)
Players.PlayerAdded:Connect(function(player)
    if MoonCMD.BannedPlayers[player.UserId] then
        -- Trava ou crasha o boneco do alvo se ele reentrar enquanto o script rodar
        task.spawn(function()
            while task.wait(0.5) do
                if player.Character then player.Character:BreakJoints() end
            end
        end)
    end
end)

-- ==================== LISTA DE COMANDOS CRIAÇÃO ====================

-- 1. JAIL (Prende o jogador em uma jaula gerada localmente)
MoonCMD.AddCommand("jail", function(args)
    local target = findPlayer(args[1])
    if target and target.Character then
        local root = target.Character:FindFirstChild("HumanoidRootPart")
        if root then
            -- Cria uma jaula básica de blocos envolta do jogador
            local jailBox = Instance.new("Part", workspace)
            jailBox.Size = Vector3.new(8, 10, 8)
            jailBox.CFrame = root.CFrame
            jailBox.Transparency = 0.6
            jailBox.Color = Color3.fromRGB(255, 0, 0)
            jailBox.Material = Enum.Material.ForceField
            jailBox.Anchored = true
            jailBox.Name = "Jail_" .. target.Name
            notify("MoonCMD", target.Name .. " foi colocado na jaula!")
        end
    end
end)

-- Unjail (Remove a jaula)
MoonCMD.AddCommand("unjail", function(args)
    local target = findPlayer(args[1])
    if target then
        local jail = workspace:FindFirstChild("Jail_" .. target.Name)
        if jail then jail:Destroy() notify("MoonCMD", target.Name .. " libertado!") end
    end
end)

-- 2. BAN (Aprimorado: Escolha Ban temporário em segundos ou Ban Permanente 'perm')
-- Exemplo de uso na cmdbar: ;ban vini 10 (bane por 10 segundos) ou ;ban vini perm
MoonCMD.AddCommand("ban", function(args)
    local target = findPlayer(args[1])
    local tempo = args[2] or "perm"
    
    if target and target.Character then
        if tempo == "perm" then
            MoonCMD.BannedPlayers[target.UserId] = true
            target.Character:BreakJoints()
            notify("MoonCMD", target.Name .. " foi banido PERMANENTEMENTE!")
        else
            local segundos = tonumber(tempo) or 5
            target.Character.HumanoidRootPart.Anchored = true
            notify("MoonCMD", target.Name .. " banido temporariamente por " .. segundos .. "s")
            task.wait(segundos)
            if target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                target.Character.HumanoidRootPart.Anchored = false
                notify("MoonCMD", target.Name .. " foi desbanido.")
            end
        end
    end
end)

-- 3. MUDAR TEMPO (Dia / Noite)
MoonCMD.AddCommand("day", function()
    Lighting.ClockTime = 14
    notify("MoonCMD", "Horario alterado para o Dia.")
end)

MoonCMD.AddCommand("night", function()
    Lighting.ClockTime = 0
    notify("MoonCMD", "Horario alterado para a Noite.")
end)

-- 4. SIT (Faz seu personagem ou o alvo sentar imediatamente)
MoonCMD.AddCommand("sit", function(args)
    local target = findPlayer(args[1]) or LocalPlayer
    if target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") then
        target.Character:FindFirstChildOfClass("Humanoid").Sit = true
    end
end)

-- 5. TELEPORT PLAYER (Teleporta você até um jogador)
-- Exemplo: ;tp vini
MoonCMD.AddCommand("tp", function(args)
    local target = findPlayer(args[1])
    if target and target.Character and LocalPlayer.Character then
        local targetRoot = target.Character:FindFirstChild("HumanoidRootPart")
        local myRoot = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if targetRoot and myRoot then
            myRoot.CFrame = targetRoot.CFrame + Vector3.new(0, 2, 0)
            notify("MoonCMD", "Teleportado ate " .. target.Name)
        end
    end
end)

notify("MoonCMD Carregado", "Aperte [ ; ] para abrir a barra de comandos rápida!")
