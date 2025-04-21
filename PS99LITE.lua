-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(255, 170, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.0510783195, 0, 0.524793386, 0)
Frame.Size = UDim2.new(0, 180, 0, 192)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.223958328, 0)
TextLabel.Size = UDim2.new(0, 180, 0, 42)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Not in use untill executor support is needed"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.442708343, 0)
TextLabel_2.Size = UDim2.new(0, 180, 0, 42)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = ".gg/ADfX97gdx3 for main script"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.73888886, 0, 0, 0)
TextButton.Size = UDim2.new(0, 47, 0, 43)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 49.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

-- Scripts:

local function ALGWNS_fake_script() -- Frame.drag 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService("UserInputService")
	local frame = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end
coroutine.wrap(ALGWNS_fake_script)()
local function KUTJYVR_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		local gui = button:FindFirstAncestorOfClass("ScreenGui")
		if gui then
			gui:Destroy()
			
		end
		if gui then
			print("ui closed join the discord")
		end
	end)
	
end
coroutine.wrap(KUTJYVR_fake_script)()

