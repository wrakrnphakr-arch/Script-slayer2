local KornluvElly = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

---------------------------------------------------------
-- Intro Loading Screen
---------------------------------------------------------
local INTRO_IMAGE = "rbxassetid://92577004509867"
local INTRO_TITLE = "KornluvElly"
local INTRO_TIME  = 4.5 

local function ResolveIntroImage(src)
    if src == "" then return nil end
    if string.sub(src, 1, 13) == "rbxassetid://" or string.sub(src, 1, 11) == "rbxasset://" then
        return src
    end
    if string.sub(src, 1, 4) == "http" and writefile and getcustomasset then
        local ok, result = pcall(function()
            local data = game:HttpGet(src)
            writefile("KornluvEllyIntro.png", data)
            return getcustomasset("KornluvEllyIntro.png")
        end)
        if ok then return result end
    end
    return nil
end

local function PlayIntro()
    local TweenService = game:GetService("TweenService")
    local CoreGuiSvc = game:GetService("CoreGui")

    local old = CoreGuiSvc:FindFirstChild("KornluvEllyIntro")
    if old then old:Destroy() end

    local gui = Instance.new("ScreenGui")
    gui.Name = "KornluvEllyIntro"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.DisplayOrder = 999
    gui.Parent = gethui and gethui() or CoreGuiSvc

    local group = Instance.new("CanvasGroup")
    group.Size = UDim2.fromScale(1, 1)
    group.BackgroundColor3 = Color3.fromRGB(255, 245, 248)
    group.BorderSizePixel = 0
    group.GroupTransparency = 1
    group.Active = true
    group.Parent = gui

    local bg
    local imageId = ResolveIntroImage(INTRO_IMAGE)
    if imageId then
        bg = Instance.new("ImageLabel")
        bg.AnchorPoint = Vector2.new(0.5, 0.5)
        bg.Position = UDim2.fromScale(0.5, 0.5)
        bg.Size = UDim2.fromScale(1.1, 1.1)
        bg.BackgroundTransparency = 1
        bg.Image = imageId
        bg.ScaleType = Enum.ScaleType.Crop
        bg.ImageTransparency = 0.15
        bg.Parent = group

        TweenService:Create(bg, TweenInfo.new(7, Enum.EasingStyle.Linear), {
            Size = UDim2.fromScale(1.3, 1.3),
            Position = UDim2.fromScale(0.47, 0.48)
        }):Play()
        TweenService:Create(bg, TweenInfo.new(1.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            ImageTransparency = 0.05
        }):Play()
    end

    local shade = Instance.new("Frame")
    shade.Size = UDim2.fromScale(1, 1)
    shade.BackgroundColor3 = Color3.fromRGB(255, 235, 242)
    shade.BorderSizePixel = 0
    shade.Parent = group
    local shadeGrad = Instance.new("UIGradient")
    shadeGrad.Rotation = 90
    shadeGrad.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.85),
        NumberSequenceKeypoint.new(0.6, 0.6),
        NumberSequenceKeypoint.new(1, 0.3),
    })
    shadeGrad.Parent = shade

    local running = true
    for i = 1, 32 do
        task.spawn(function()
            local size = math.random(3, 7)
            local flake = Instance.new("Frame")
            flake.Size = UDim2.fromOffset(size, size)
            flake.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            flake.BackgroundTransparency = 0.2 + math.random() * 0.3
            flake.BorderSizePixel = 0
            flake.Parent = group
            Instance.new("UICorner", flake).CornerRadius = UDim.new(1, 0)

            task.wait(math.random() * 3)
            while running do
                local x = math.random()
                flake.Position = UDim2.fromScale(x, -0.05)
                local fall = TweenService:Create(flake, TweenInfo.new(4 + math.random() * 3, Enum.EasingStyle.Linear), {
                    Position = UDim2.fromScale(math.clamp(x + (math.random() - 0.5) * 0.2, 0, 1), 1.05)
                })
                fall:Play()
                fall.Completed:Wait()
            end
        end)
    end

    local title = Instance.new("TextLabel")
    title.AnchorPoint = Vector2.new(0.5, 0.5)
    title.Position = UDim2.fromScale(0.5, 0.5)
    title.Size = UDim2.new(1, 0, 0, 60)
    title.BackgroundTransparency = 1
    title.Text = INTRO_TITLE
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 46
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextTransparency = 1
    title.TextStrokeColor3 = Color3.fromRGB(255, 170, 195)
    title.TextStrokeTransparency = 1
    title.Parent = group

    local percent = Instance.new("TextLabel")
    percent.AnchorPoint = Vector2.new(0.5, 1)
    percent.Position = UDim2.new(0.5, 0, 1, -50)
    percent.Size = UDim2.new(1, 0, 0, 26)
    percent.BackgroundTransparency = 1
    percent.Text = "0%"
    percent.Font = Enum.Font.SourceSansBold
    percent.TextSize = 22
    percent.TextColor3 = Color3.fromRGB(255, 255, 255)
    percent.Parent = group

    local barBg = Instance.new("Frame")
    barBg.AnchorPoint = Vector2.new(0.5, 1)
    barBg.Position = UDim2.new(0.5, 0, 1, -32)
    barBg.Size = UDim2.new(0.7, 0, 0, 8)
    barBg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    barBg.BackgroundTransparency = 0.5
    barBg.BorderSizePixel = 0
    barBg.Parent = group
    Instance.new("UICorner", barBg).CornerRadius = UDim.new(1, 0)

    local barFill = Instance.new("Frame")
    barFill.Size = UDim2.fromScale(0, 1)
    barFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    barFill.BorderSizePixel = 0
    barFill.Parent = barBg
    Instance.new("UICorner", barFill).CornerRadius = UDim.new(1, 0)
    
    local fillGrad = Instance.new("UIGradient")
    fillGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 180, 205)),
    })
    fillGrad.Parent = barFill

    local counter = Instance.new("NumberValue")
    counter.Changed:Connect(function(v)
        percent.Text = math.floor(v) .. "%"
    end)

    TweenService:Create(group, TweenInfo.new(0.5), { GroupTransparency = 0 }):Play()
    task.wait(0.4)

    TweenService:Create(title, TweenInfo.new(1.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0,
        TextStrokeTransparency = 0.3,
        Position = UDim2.fromScale(0.5, 0.45)
    }):Play()

    local loadInfo = TweenInfo.new(INTRO_TIME, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
    TweenService:Create(barFill, loadInfo, { Size = UDim2.fromScale(1, 1) }):Play()
    local countTween = TweenService:Create(counter, loadInfo, { Value = 100 })
    countTween:Play()
    countTween.Completed:Wait()
    percent.Text = "100%"
    task.wait(0.3)

    local fadeOut = TweenService:Create(group, TweenInfo.new(0.7), { GroupTransparency = 1 })
    fadeOut:Play()
    fadeOut.Completed:Wait()
    running = false
    gui:Destroy()
end

PlayIntro()

---------------------------------------------------------
-- Main Window
---------------------------------------------------------
local Window = KornluvElly:CreateWindow({
    Title = "KornluvElly",
    SubTitle = "by dawid",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Rose",
    MinimizeKey = Enum.KeyCode.LeftControl
})

---------------------------------------------------------
-- Mobile UI Helpers
---------------------------------------------------------
local UserInputService = game:GetService("UserInputService")

local function AttachMobileDragFilter(scrollingFrame, itemButton, onClickCallback)
    local startPos = Vector2.zero
    local isMoved = false

    itemButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            startPos = input.Position
            isMoved = false
        end
    end)

    itemButton.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if (input.Position - startPos).Magnitude > 10 then
                isMoved = true
            end
        end
    end)

    itemButton.InputEnded:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not isMoved then
            onClickCallback()
        end
    end)
end

local function MobileOptimizeSlider(sliderObject)
    task.spawn(function()
        task.wait(0.5)
        if not sliderObject or not sliderObject.Frame then return end
        
        local sliderContainer = sliderObject.Frame
        local sliderBar = sliderContainer:FindFirstChildWhichIsA("Frame", true)
        if not sliderBar then return end

        local parentFrame = sliderBar.Parent

        local minusBtn = Instance.new("TextButton")
        minusBtn.Name = "MobileMinusBtn"
        minusBtn.Size = UDim2.fromOffset(32, 32)
        minusBtn.Position = UDim2.new(0, -38, 0.5, -16)
        minusBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 225)
        minusBtn.Text = "-"
        minusBtn.TextColor3 = Color3.fromRGB(80, 80, 80)
        minusBtn.Font = Enum.Font.SourceSansBold
        minusBtn.TextSize = 22
        minusBtn.Parent = parentFrame
        Instance.new("UICorner", minusBtn).CornerRadius = UDim.new(0, 6)

        local plusBtn = Instance.new("TextButton")
        plusBtn.Name = "MobilePlusBtn"
        plusBtn.Size = UDim2.fromOffset(32, 32)
        plusBtn.Position = UDim2.new(1, 6, 0.5, -16)
        plusBtn.BackgroundColor3 = Color3.fromRGB(255, 215, 225)
        plusBtn.Text = "+"
        plusBtn.TextColor3 = Color3.fromRGB(80, 80, 80)
        plusBtn.Font = Enum.Font.SourceSansBold
        plusBtn.TextSize = 22
        plusBtn.Parent = parentFrame
        Instance.new("UICorner", plusBtn).CornerRadius = UDim.new(0, 6)

        minusBtn.MouseButton1Click:Connect(function()
            local curVal = sliderObject.Value or 50
            sliderObject:SetValue(math.clamp(curVal - 1, sliderObject.Min or 1, sliderObject.Max or 100))
        end)

        plusBtn.MouseButton1Click:Connect(function()
            local curVal = sliderObject.Value or 50
            sliderObject:SetValue(math.clamp(curVal + 1, sliderObject.Min or 1, sliderObject.Max or 100))
        end)
    end)
end

---------------------------------------------------------
-- Tabs Setup
---------------------------------------------------------
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Combat = Window:AddTab({ Title = "Combat", Icon = "swords" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

---------------------------------------------------------
-- 1. Main Tab
---------------------------------------------------------
Tabs.Main:AddSection("Dungeon")

local JoinDungeonToggle = Tabs.Main:AddToggle("JoinDungeon", {
    Title = "Join Dungeon",
    Default = false
})

JoinDungeonToggle:OnChanged(function(Value)
    if Value then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = CFrame.new(-1600, 1010, 1143)
        end
    end
end)

local isStartDungeonActive = false
local StartDungeonToggle = Tabs.Main:AddToggle("StartDungeon", {
    Title = "Start Dungeon",
    Default = false
})

StartDungeonToggle:OnChanged(function(Value)
    isStartDungeonActive = Value
    if Value then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = CFrame.new(-2540, 1145, -5081)
        end
        
        task.spawn(function()
            while isStartDungeonActive do
                for _, prompt in pairs(workspace:GetDescendants()) do
                    if prompt:IsA("ProximityPrompt") and (string.find(string.lower(prompt.ObjectText), "ready") or string.find(string.lower(prompt.ActionText), "ready")) then
                        fireproximityprompt(prompt)
                    end
                end
                task.wait(0.5)
            end
        end)
    end
end)

---------------------------------------------------------
-- 2. Combat Tab (Instant Kill Fix)
---------------------------------------------------------
local isInstantKill = false
local instantKillHPThreshold = 100

local function GetEquippedWeaponName()
    local player = game.Players.LocalPlayer
    if player and player.Character then
        local tool = player.Character:FindFirstChildOfClass("Tool")
        if tool then
            return tool.Name
        end
    end
    return nil
end

Tabs.Combat:AddSection("Setup")

local InstantKillToggle = Tabs.Combat:AddToggle("InstantKillToggle", {
    Title = "Instant Kill",
    Description = "Fast-attacks target when HP % is below threshold",
    Default = false
})

local InstantKillSlider = Tabs.Combat:AddSlider("InstantKillHPThreshold", {
    Title = "HP Threshold (%)",
    Description = "Target HP % threshold to activate Instant Kill (1-100%)",
    Default = 100,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Callback = function(Value)
        instantKillHPThreshold = Value
    end
})

MobileOptimizeSlider(InstantKillSlider)

InstantKillToggle:OnChanged(function(Value)
    isInstantKill = Value
end)

task.spawn(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local signalEvent = ReplicatedStorage:WaitForChild("Communication"):WaitForChild("ServerAndClient"):WaitForChild("Signals"):WaitForChild("SignalEvent")
    local signalRemote = signalEvent:FindFirstChild("Event") or signalEvent

    while true do
        if isInstantKill then
            pcall(function()
                local player = game.Players.LocalPlayer
                local currentWeapon = GetEquippedWeaponName()

                if player and player.Character and currentWeapon then
                    for _, obj in pairs(workspace:GetDescendants()) do
                        if obj:IsA("Humanoid") and obj.Parent and obj.Parent ~= player.Character then
                            local targetChar = obj.Parent
                            local isPlayer = game.Players:GetPlayerFromCharacter(targetChar)
                            
                            if not isPlayer and obj.Health > 0 and obj.MaxHealth > 0 then
                                local hpPercent = (obj.Health / obj.MaxHealth) * 100
                                
                                if hpPercent <= instantKillHPThreshold then
                                    for combo = 1, 5 do
                                        signalRemote:FireServer(
                                            "Combat_Service",
                                            currentWeapon,
                                            combo,
                                            false,
                                            0.06310679611650488,
                                            true
                                        )
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait(0.1)
    end
end)

---------------------------------------------------------
-- 3. Player Tab
---------------------------------------------------------
Tabs.Player:AddSection("Player")

local isSpeedActive = false
local speedValue = 16

local SpeedToggle = Tabs.Player:AddToggle("SpeedToggle", {
    Title = "Player Speed",
    Default = false
})

local SpeedSlider = Tabs.Player:AddSlider("SpeedSlider", {
    Title = "Speed Value",
    Default = 16,
    Min = 1,
    Max = 200,
    Rounding = 0,
    Callback = function(Value)
        speedValue = Value
    end
})

MobileOptimizeSlider(SpeedSlider)

SpeedToggle:OnChanged(function(Value)
    isSpeedActive = Value
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if isSpeedActive then
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = speedValue
        end
    end
end)
