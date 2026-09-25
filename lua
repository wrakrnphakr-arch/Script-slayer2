-- ============================================
-- 1. Loading Screen (หน้าโหลด Elly UI)
-- ============================================
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- สร้าง ScreenGui สำหรับหน้าโหลด
local LoadingGui = Instance.new("ScreenGui")
LoadingGui.Name = "EllyLoadingScreen"
LoadingGui.IgnoreGuiInset = true -- ทำให้ภาพเต็มจอแบบไม่มีขอบดำด้านบน
LoadingGui.ResetOnSpawn = false
LoadingGui.Parent = PlayerGui

-- ภาพ Background เต็มจอ
local Background = Instance.new("ImageLabel")
Background.Size = UDim2.fromScale(1, 1)
Background.Image = "rbxassetid://92577004509867"
Background.ScaleType = Enum.ScaleType.Crop
Background.Parent = LoadingGui

-- Frame สำหรับเก็บหิมะ
local SnowContainer = Instance.new("Frame")
SnowContainer.Size = UDim2.fromScale(1, 1)
SnowContainer.BackgroundTransparency = 1
SnowContainer.Parent = LoadingGui

-- ระบบหิมะตก (Snowfall Effect)
local isSnowing = true
task.spawn(function()
    while isSnowing do
        task.wait(0.08)
        local flake = Instance.new("Frame")
        local size = math.random(3, 7)
        flake.Size = UDim2.fromOffset(size, size)
        flake.Position = UDim2.fromScale(math.random(), -0.05)
        flake.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        flake.BackgroundTransparency = math.random(1, 4) / 10
        flake.BorderSizePixel = 0

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim2.fromScale(1, 1)
        corner.Parent = flake
        flake.Parent = SnowContainer

        local fallDuration = math.random(3, 5)
        local endX = flake.Position.X.Scale + (math.random(-10, 10) / 100)
        local targetPos = UDim2.fromScale(endX, 1.05)

        local tween = TweenService:Create(flake, TweenInfo.new(fallDuration, Enum.EasingStyle.Linear), {
            Position = targetPos,
            BackgroundTransparency = 1
        })
        tween:Play()
        tween.Completed:Connect(function()
            flake:Destroy()
        end)
    end
end)

-- ข้อความชื่อ UI บนหน้าโหลด
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Text = "Elly UI"
TitleLabel.TextSize = 36
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Position = UDim2.fromScale(0.5, 0.73)
TitleLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Parent = Background

-- ข้อความแสดง % การโหลด
local ProgressText = Instance.new("TextLabel")
ProgressText.Text = "Loading... 0%"
ProgressText.TextSize = 20
ProgressText.Font = Enum.Font.Gotham
ProgressText.TextColor3 = Color3.fromRGB(220, 220, 220)
ProgressText.Position = UDim2.fromScale(0.5, 0.78)
ProgressText.AnchorPoint = Vector2.new(0.5, 0.5)
ProgressText.BackgroundTransparency = 1
ProgressText.Parent = Background

-- แถบ Loading Bar (พื้นหลัง)
local BarBackground = Instance.new("Frame")
BarBackground.Size = UDim2.new(0, 320, 0, 8)
BarBackground.Position = UDim2.fromScale(0.5, 0.83)
BarBackground.AnchorPoint = Vector2.new(0.5, 0.5)
BarBackground.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BarBackground.BorderSizePixel = 0
BarBackground.Parent = Background

local BarBgCorner = Instance.new("UICorner")
BarBgCorner.CornerRadius = UDim2.fromOffset(4)
BarBgCorner.Parent = BarBackground

-- แถบ Loading Bar (ส่วนที่วิ่ง)
local BarFill = Instance.new("Frame")
BarFill.Size = UDim2.new(0, 0, 1, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BarFill.BorderSizePixel = 0
BarFill.Parent = BarBackground

local BarFillCorner = Instance.new("UICorner")
BarFillCorner.CornerRadius = UDim2.fromOffset(4)
BarFillCorner.Parent = BarFill

-- การนับเวลา 1-100% ภายใน 6 วินาที
local totalDuration = 6
local startTime = tick()

while true do
    local elapsed = tick() - startTime
    local progress = math.clamp(elapsed / totalDuration, 0, 1)

    BarFill.Size = UDim2.new(progress, 0, 1, 0)
    ProgressText.Text = "Loading... " .. math.floor(progress * 100) .. "%"

    if progress >= 1 then
        break
    end
    task.wait()
end

-- ปิดเอฟเฟกต์หิมะและลบหน้าโหลดออก
isSnowing = false
task.wait(0.3)
LoadingGui:Destroy()


-- ============================================
-- 2. Elly UI Core (ส่วน GUI หลัก)
-- ============================================
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Elly UI " .. Fluent.Version,
    SubTitle = "by dawid",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- สร้าง Tab สำหรับรอใส่ฟังก์ชันของคุณ
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- ระบบจัดการ Config และ Interface
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("EllyUIScriptHub")
SaveManager:SetFolder("EllyUIScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

-- แจ้งเตือนเมื่อโหลดเสร็จเข้าเมนูหลัก
Fluent:Notify({
    Title = "Elly UI",
    Content = "The script has been successfully loaded.",
    Duration = 5
})

SaveManager:LoadAutoloadConfig()
