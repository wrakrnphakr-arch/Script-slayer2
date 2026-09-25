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
-- Mobile-Friendly UI Helper Functions
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

---------------------------------------------------------
-- Sakura Effect
---------------------------------------------------------
local TweenService = game:GetService("TweenService")
local isSakuraActive = false
local sakuraContainer = nil

local function StopSakuraEffect()
    isSakuraActive = false
    if sakuraContainer then
        sakuraContainer:Destroy()
        sakuraContainer = nil
    end
end

local function StartSakuraEffect(targetParent)
    StopSakuraEffect()
    if not targetParent then return end

    isSakuraActive = true
    sakuraContainer = Instance.new("Frame")
    sakuraContainer.Name = "SakuraContainer"
    sakuraContainer.Size = UDim2.fromScale(1, 1)
    sakuraContainer.BackgroundTransparency = 1
    sakuraContainer.ClipsDescendants = true
    sakuraContainer.ZIndex = 1
    sakuraContainer.Parent = targetParent

    for i = 1, 25 do
        task.spawn(function()
            local petal = Instance.new("Frame")
            local size = math.random(6, 12)
            petal.Size = UDim2.fromOffset(size, math.floor(size * 1.5))
            petal.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
            petal.BackgroundTransparency = 0.15 + math.random() * 0.2
            petal.BorderSizePixel = 0
            petal.Rotation = math.random(0, 360)
            petal.Parent = sakuraContainer

            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0.8, 0)
            corner.Parent = petal

            task.wait(math.random() * 3)

            while isSakuraActive and petal and petal.Parent do
                local startX = math.random()
                petal.Position = UDim2.fromScale(startX, -0.1)
                
                local fallDuration = 4 + math.random() * 4
                local endX = math.clamp(startX + (math.random() - 0.5) * 0.3, 0, 1)
                local endRotation = petal.Rotation + math.random(180, 540)

                local fallTween = TweenService:Create(petal, TweenInfo.new(fallDuration, Enum.EasingStyle.Linear), {
                    Position = UDim2.fromScale(endX, 1.1),
                    Rotation = endRotation
                })

                fallTween:Play()
                fallTween.Completed:Wait()
            end
        end)
    end
end

---------------------------------------------------------
-- UI Background
---------------------------------------------------------
task.spawn(function()
    local rootGui = Window.Root or (Window.UIElements and Window.UIElements.Main)
    if not rootGui then
        local CoreGui = game:GetService("CoreGui")
        local targetName = "Fluent"
        local found = (gethui and gethui():FindFirstChild(targetName)) or CoreGui:FindFirstChild(targetName)
        if found then
            rootGui = found:FindFirstChildWhichIsA("Frame", true)
        end
    end

    if rootGui then
        rootGui.BackgroundColor3 = Color3.fromRGB(255, 242, 246)

        local uiBg = Instance.new("ImageLabel")
        uiBg.Name = "WindowCustomBackground"
        uiBg.Size = UDim2.fromScale(1, 1)
        uiBg.Position = UDim2.fromScale(0, 0)
        uiBg.BackgroundTransparency = 1
        uiBg.Image = "rbxassetid://79436187892950"
        uiBg.ScaleType = Enum.ScaleType.Crop
        uiBg.ImageTransparency = 0.05
        uiBg.ZIndex = -10
        uiBg.Parent = rootGui
        
        local overlay = Instance.new("Frame")
        overlay.Name = "PastelOverlay"
        overlay.Size = UDim2.fromScale(1, 1)
        overlay.BackgroundColor3 = Color3.fromRGB(255, 245, 248)
        overlay.BackgroundTransparency = 0.85
        overlay.BorderSizePixel = 0
        overlay.ZIndex = -9
        overlay.Parent = rootGui

        local corner = rootGui:FindFirstChildWhichIsA("UICorner")
        if corner then
            local bgCorner = Instance.new("UICorner")
            bgCorner.CornerRadius = corner.CornerRadius
            bgCorner.Parent = uiBg

            local overlayCorner = Instance.new("UICorner")
            overlayCorner.CornerRadius = corner.CornerRadius
            overlayCorner.Parent = overlay
        end

        StartSakuraEffect(rootGui)

        rootGui:GetPropertyChangedSignal("Visible"):Connect(function()
            if rootGui.Visible then
                StartSakuraEffect(rootGui)
            else
                StopSakuraEffect()
            end
        end)
    end
end)

---------------------------------------------------------
-- Watermark Button
---------------------------------------------------------
local CoreGui = game:GetService("CoreGui")

if CoreGui:FindFirstChild("KornluvEllyWatermark") then
    CoreGui:FindFirstChild("KornluvEllyWatermark"):Destroy()
end

local WatermarkGui = Instance.new("ScreenGui")
WatermarkGui.Name = "KornluvEllyWatermark"
WatermarkGui.ResetOnSpawn = false

if gethui then
    WatermarkGui.Parent = gethui()
else
    WatermarkGui.Parent = CoreGui
end

local WatermarkButton = Instance.new("ImageButton")
WatermarkButton.Name = "WatermarkIcon"
WatermarkButton.Parent = WatermarkGui
WatermarkButton.Size = UDim2.new(0, 60, 0, 60)
WatermarkButton.Position = UDim2.new(1, -70, 0, 20)
WatermarkButton.BackgroundTransparency = 1
WatermarkButton.Image = "rbxassetid://119662096507158"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = WatermarkButton

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 215, 225)
UIStroke.Thickness = 2
UIStroke.Parent = WatermarkButton

local dragging = false
local dragInput, dragStart, startPos
local hasMoved = false

local function update(input)
    local delta = input.Position - dragStart
    WatermarkButton.Position = UDim2.new(
        startPos.X.Scale, startPos.X.Offset + delta.X,
        startPos.Y.Scale, startPos.Y.Offset + delta.Y
    )
end

WatermarkButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        hasMoved = false
        dragStart = input.Position
        startPos = WatermarkButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
                if not hasMoved then
                    Window:Minimize()
                end
            end
        end)
    end
end)

WatermarkButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        if (input.Position - dragStart).Magnitude > 5 then
            hasMoved = true
        end
        update(input)
    end
end)

---------------------------------------------------------
-- Tabs Setup
---------------------------------------------------------
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Combat = Window:AddTab({ Title = "Combat", Icon = "swords" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = KornluvElly.Options

do
    ---------------------------------------------------------
    -- Dungeon Section (Main Tab)
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
            local targetPosition = Vector3.new(-1600, 1010, 1143)
            
            if hrp then
                hrp.CFrame = CFrame.new(targetPosition)
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
            
            local targetPosition = Vector3.new(-2540, 1145, -5081)
            if hrp then
                hrp.CFrame = CFrame.new(targetPosition)
            end
            
            task.spawn(function()
                while isStartDungeonActive do
                    for _, prompt in pairs(workspace:GetDescendants()) do
                        if prompt:IsA("ProximityPrompt") and (string.find(string.lower(prompt.ObjectText), "ready") or string.find(string.lower(prompt.ActionText), "ready")) then
                            fireproximityprompt(prompt)
                        end
                    end
                    
                    local playerGui = player:FindFirstChild("PlayerGui")
                    if playerGui then
                        for _, guiItem in pairs(playerGui:GetDescendants()) do
                            if (guiItem:IsA("TextButton") or guiItem:IsA("ImageButton")) and guiItem.Visible then
                                if guiItem:IsA("TextButton") and string.find(string.lower(guiItem.Text), "ready") then
                                    for _, event in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                                        for _, connection in pairs(getconnections(guiItem[event])) do
                                            connection:Fire()
                                        end
                                    end
                                elseif string.find(string.lower(guiItem.Name), "ready") then
                                    for _, event in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                                        for _, connection in pairs(getconnections(guiItem[event])) do
                                            connection:Fire()
                                        end
                                    end
                                end
                            end
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    end)

    ---------------------------------------------------------
    -- Auto Dungeon (4-Hit Combo -> 1-Sec Rest Loop)
    ---------------------------------------------------------
    local isAutoDungeon = false
    local dungeonConnection = nil
    local attackThread = nil
    local currentTargetMob = nil 

    local DISTANCE = 6.5
    local OFFSET_X = 0
    local OFFSET_Y = -1
    local OFFSET_Z = 0

    local function IsMobAlive(mob)
        if mob and mob.Parent and mob:IsDescendantOf(workspace) then
            local hum = mob:FindFirstChildOfClass("Humanoid")
            local hrp = mob:FindFirstChild("HumanoidRootPart") or mob:FindFirstChild("Head") or mob.PrimaryPart
            if hum and hrp and hum.Health > 0 then
                return true
            end
        end
        return false
    end

    local function GetClosestMob(maxDistance)
        local player = game.Players.LocalPlayer
        if not (player.Character and player.Character:FindFirstChild("HumanoidRootPart")) then return nil end

        local myPos = player.Character.HumanoidRootPart.Position
        local closestMob = nil
        local shortestDist = maxDistance

        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("Humanoid") and obj.Parent and obj.Parent ~= player.Character then
                local mobChar = obj.Parent
                if IsMobAlive(mobChar) and not game.Players:GetPlayerFromCharacter(mobChar) then
                    local mobHrp = mobChar:FindFirstChild("HumanoidRootPart") or mobChar:FindFirstChild("Head") or mobChar.PrimaryPart
                    if mobHrp then
                        local dist = (mobHrp.Position - myPos).Magnitude
                        if dist <= shortestDist then
                            shortestDist = dist
                            closestMob = mobChar
                        end
                    end
                end
            end
        end

        return closestMob
    end

    local AutoDungeonToggle = Tabs.Main:AddToggle("AutoDungeon", {
        Title = "Auto Dungeon (4 Hits + 1s Rest)",
        Description = "Attacks 4 times continuously, pauses for 1 second, and repeats",
        Default = false
    })

    AutoDungeonToggle:OnChanged(function(Value)
        isAutoDungeon = Value

        if isAutoDungeon then
            dungeonConnection = game:GetService("RunService").Heartbeat:Connect(function()
                local player = game.Players.LocalPlayer
                if not (player.Character and player.Character:FindFirstChild("HumanoidRootPart")) then return end

                if not IsMobAlive(currentTargetMob) then
                    currentTargetMob = GetClosestMob(1250)
                end

                if IsMobAlive(currentTargetMob) then
                    local mobPart = currentTargetMob:FindFirstChild("HumanoidRootPart") or currentTargetMob:FindFirstChild("Head") or currentTargetMob.PrimaryPart
                    if mobPart then
                        local targetPos = mobPart.Position + Vector3.new(OFFSET_X, DISTANCE + OFFSET_Y, OFFSET_Z)
                        local targetCFrame = CFrame.new(targetPos) * CFrame.Angles(math.rad(-90), 0, 0)
                        
                        player.Character.HumanoidRootPart.CFrame = targetCFrame
                        player.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end)

            attackThread = task.spawn(function()
                local signalEvent = game:GetService("ReplicatedStorage"):WaitForChild("Communication"):WaitForChild("ServerAndClient"):WaitForChild("Signals"):WaitForChild("SignalEvent")
                local signalRemote = signalEvent:FindFirstChild("Event") or signalEvent

                while isAutoDungeon do
                    if IsMobAlive(currentTargetMob) then
                        for combo = 1, 4 do
                            pcall(function()
                                signalRemote:FireServer("Combat_Service", "Combat", combo, false, 0, false)
                            end)
                            task.wait(0.05)
                        end
                        task.wait(1)
                    else
                        task.wait(0.1)
                    end
                end
            end)
        else
            currentTargetMob = nil
            if dungeonConnection then
                dungeonConnection:Disconnect()
                dungeonConnection = nil
            end
            if attackThread then
                task.cancel(attackThread)
                attackThread = nil
            end
        end
    end)

    ---------------------------------------------------------
    -- Card Selection Dropdowns (Mobile Optimized Drag Filter)
    ---------------------------------------------------------
    local SelectCardDropdown = Tabs.Main:AddDropdown("SelectCard", {
        Title = "Select Card",
        Description = "Select cards to auto pick",
        Values = {"Card 1", "Card 2", "Card 3", "Card 4", "Card 5", "Card 6", "Card 7"},
        Multi = true,
        Default = {}
    })

    local BlacklistCardDropdown = Tabs.Main:AddDropdown("BlacklistCard", {
        Title = "Blacklist Card",
        Description = "Select cards to ignore",
        Values = {"Card 1", "Card 2", "Card 3", "Card 4", "Card 5", "Card 6", "Card 7"},
        Multi = true,
        Default = {}
    })

    -- Apply touch-drag vs tap filter to dropdowns
    task.spawn(function()
        task.wait(1)
        for _, dropdownObj in pairs({SelectCardDropdown, BlacklistCardDropdown}) do
            if dropdownObj and dropdownObj.Frame then
                local scroll = dropdownObj.Frame:FindFirstChildWhichIsA("ScrollingFrame", true)
                if scroll then
                    for _, child in pairs(scroll:GetChildren()) do
                        if child:IsA("TextButton") or child:IsA("ImageButton") then
                            local rawConnections = getconnections(child.MouseButton1Click)
                            for _, conn in pairs(rawConnections) do
                                local func = conn.Function
                                if func then
                                    conn:Disable()
                                    AttachMobileDragFilter(scroll, child, function()
                                        func()
                                    end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)

    ---------------------------------------------------------
    -- Heal Card Slider (Mobile Friendly Controls)
    ---------------------------------------------------------
    local HealCardSlider = Tabs.Main:AddSlider("HealCardBelowHP", {
        Title = "Heal Card Below HP %",
        Description = "Adjust HP threshold for Heal Card",
        Default = 50,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Callback = function(Value)
            print("Heal Card HP %:", Value)
        end
    })

    -- Mobile Plus/Minus Buttons Injector for Sliders
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

    MobileOptimizeSlider(HealCardSlider)

    local AutoPickCardToggle = Tabs.Main:AddToggle("AutoPickCard", {
        Title = "Auto Pick Card",
        Description = "Picks from Select Card & Ignores Blacklist Card",
        Default = false
    })

    local AutoSkipToggle = Tabs.Main:AddToggle("AutoSkip", {
        Title = "Auto Skip",
        Default = false
    })
---------------------------------------------------------
-- Combat Tab Setup (วางไว้ก่อน Tab Player)
---------------------------------------------------------
Tabs.Combat = Window:AddTab({ Title = "Combat", Icon = "swords" })

do
    ---------------------------------------------------------
    -- Setup Section
    ---------------------------------------------------------
    Tabs.Combat:AddSection("Setup")

    local isInstantKill = false
    local instantKillHPThreshold = 20

    local InstantKillToggle = Tabs.Combat:AddToggle("InstantKillToggle", {
        Title = "Instant Kill",
        Description = "Sends lethal damage direct to mob below HP threshold",
        Default = false
    })

    local InstantKillSlider = Tabs.Combat:AddSlider("InstantKillSlider", {
        Title = "HP Threshold (%)",
        Description = "Triggers Instant Kill when Mob HP is below this %",
        Default = 20,
        Min = 1,
        Max = 100,
        Rounding = 0,
        Callback = function(Value)
            instantKillHPThreshold = Value
        end
    })

    -- Add mobile + / - buttons to slider
    MobileOptimizeSlider(InstantKillSlider)

    InstantKillToggle:OnChanged(function(Value)
        isInstantKill = Value
    end)

    ---------------------------------------------------------
    -- Instant Kill Logic Loop
    ---------------------------------------------------------
    task.spawn(function()
        local signalEvent = game:GetService("ReplicatedStorage")
            :WaitForChild("Communication")
            :WaitForChild("ServerAndClient")
            :WaitForChild("Signals")
            :WaitForChild("SignalEvent")
        local signalRemote = signalEvent:FindFirstChild("Event") or signalEvent

        while true do
            if isInstantKill then
                pcall(function()
                    local player = game.Players.LocalPlayer
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local myPos = player.Character.HumanoidRootPart.Position

                        for _, obj in pairs(workspace:GetDescendants()) do
                            if obj:IsA("Humanoid") and obj.Parent and obj.Parent ~= player.Character then
                                local mobChar = obj.Parent
                                local mobHrp = mobChar:FindFirstChild("HumanoidRootPart") or mobChar:FindFirstChild("Head") or mobChar.PrimaryPart
                                
                                if mobHrp and obj.Health > 0 and not game.Players:GetPlayerFromCharacter(mobChar) then
                                    local dist = (mobHrp.Position - myPos).Magnitude
                                    
                                    -- Check if within range (100 studs)
                                    if dist <= 100 then
                                        local hpPercent = (obj.Health / obj.MaxHealth) * 100
                                        
                                        -- Trigger Instant Kill direct signal payload if HP % is below threshold
                                        if hpPercent <= instantKillHPThreshold then
                                            signalRemote:FireServer("Combat_Service", "Combat", 1, false, 999999999, true)
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
    end
    
    ---------------------------------------------------------
    -- Player Section (Player Tab)
    ---------------------------------------------------------
    Tabs.Player:AddSection("Player")

    local noclipConnection
    local isNoclip = false

    local NoClipToggle = Tabs.Player:AddToggle("NoClipToggle", {
        Title = "No Clip",
        Description = "Allows character to walk through walls",
        Default = false
    })

    NoClipToggle:OnChanged(function(Value)
        isNoclip = Value
        if isNoclip then
            noclipConnection = game:GetService("RunService").Stepped:Connect(function()
                local player = game.Players.LocalPlayer
                if player.Character then
                    for _, part in pairs(player.Character:GetDescendants()) do
                        if part:IsA("BasePart") and part.CanCollide then
                            part.CanCollide = false
                        end
                    end
                end
            end)
        else
            if noclipConnection then
                noclipConnection:Disconnect()
                noclipConnection = nil
            end
        end
    end)

    local isSpeedActive = false
    local speedValue = 16

    local SpeedToggle = Tabs.Player:AddToggle("SpeedToggle", {
        Title = "Player Speed",
        Description = "Toggle custom walk speed",
        Default = false
    })

    local SpeedSlider = Tabs.Player:AddSlider("SpeedSlider", {
        Title = "Speed Value",
        Description = "Adjust walk speed (1 - 200)",
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
end
