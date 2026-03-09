local Players = game:GetService("Players")
local playerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ICheatsSelector"
screenGui.IgnoreGuiInset = true
screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Main background frame (the dark box in the center)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BackgroundTransparency = 0.3
mainFrame.BorderSizePixel = 0
mainFrame.Size = UDim2.new(0.469, 0, 0.646, 0)
mainFrame.Position = UDim2.new(0.269, 0, 0.221, 0)
mainFrame.Parent = screenGui

-- Rounded corners for the frame
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 12)
frameCorner.Parent = mainFrame

-- Title label at the top
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, 0, 0.175, 0)
titleLabel.FontFace = Font.new("rbxasset://fonts/families/Guru.json")
titleLabel.Text = "Select a version"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = true
titleLabel.TextWrapped = true
titleLabel.Parent = mainFrame

-- Button: ICheats V1
local v1Button = Instance.new("TextButton")
v1Button.Name = "V1Button"
v1Button.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
v1Button.BorderSizePixel = 0
v1Button.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json")
v1Button.Size = UDim2.new(0.886, 0, 0.175, 0)
v1Button.Position = UDim2.new(0.051, 0, 0.310, 0)
v1Button.Text = "ICheats V1"
v1Button.TextColor3 = Color3.fromRGB(119, 185, 234)
v1Button.TextScaled = true
v1Button.TextWrapped = true
v1Button.Parent = mainFrame

local v1Corner = Instance.new("UICorner")
v1Corner.CornerRadius = UDim.new(0, 10)
v1Corner.Parent = v1Button

-- Button: ICheats V2 (new)
local v2Button = Instance.new("TextButton")
v2Button.Name = "V2Button"
v2Button.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
v2Button.BorderSizePixel = 0
v2Button.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json")
v2Button.Size = UDim2.new(0.886, 0, 0.175, 0)
v2Button.Position = UDim2.new(0.051, 0, 0.627, 0)
v2Button.Text = "(new) ICheats V2"
v2Button.TextColor3 = Color3.fromRGB(119, 185, 234)
v2Button.TextScaled = true
v2Button.TextWrapped = true
v2Button.Parent = mainFrame

local v2Corner = Instance.new("UICorner")
v2Corner.CornerRadius = UDim.new(0, 10)
v2Corner.Parent = v2Button

-- Keeps the UI looking good on different screen sizes
local aspectConstraint = Instance.new("UIAspectRatioConstraint")
aspectConstraint.AspectRatio = 1.39683
aspectConstraint.Parent = mainFrame

-- Optional: Add simple click feedback (you can expand this later)
v1Button.MouseButton1Click:Connect(function()
    playerGui.ICheatsSelector:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RealICheats/ICheatM/refs/heads/main/Script.lua", true))()
end)

v2Button.MouseButton1Click:Connect(function()
    playerGui.ICheatsSelector:Destroy()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RealICheats/ICheat-v2/refs/heads/main/ScriptV2.lua", true))()
end)

print("ICheats Version Selector GUI loaded!")
