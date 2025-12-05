-- LOCAL SCRIPT COMPLETO --------------------------------------

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false
gui.Name = "LalapoiGUI"

-- ====== FRAME PRINCIPAL ======
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 260)
frame.Position = UDim2.new(0.5, -130, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(255, 150, 220)
frame.BorderSizePixel = 0
frame.Parent = gui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = frame

-- ====== TÍTULO ======
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(255, 110, 190)
title.Text = "Lalapoi"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.Parent = frame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = title

-- ====== BOTÃO FECHAR ======
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -30, 0, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 80, 150)
closeBtn.Text = "X"
closeBtn.TextScaled = true
closeBtn.TextColor3 = Color3.new(1,1,1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 12)
closeCorner.Parent = closeBtn

closeBtn.MouseButton1Click:Connect(function()
	frame.Visible = false
end)

-- ====== FUNÇÃO CRIAR BOTÕES ======
local function criarBotao(nome, ordem)
	local botao = Instance.new("TextButton")
	botao.Size = UDim2.new(1, -20, 0, 40)
	botao.Position = UDim2.new(0, 10, 0, 40 + (ordem * 45))
	botao.BackgroundColor3 = Color3.fromRGB(255, 120, 200)
	botao.Text = nome
	botao.TextColor3 = Color3.new(1,1,1)
	botao.Font = Enum.Font.GothamBold
	botao.TextSize = 16
	botao.Parent = frame

	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, 10)
	c.Parent = botao

	return botao
end

-- ====== BOTÃO 1: COQUETTE ======
local btn1 = criarBotao("Coquette", 0)
btn1.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://ghostbin.axel.org/paste/8z4hy/raw"))()
end)

-- ====== BOTÃO 2: IY ======
local btn2 = criarBotao("IY", 1)
btn2.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Infinite-Yield-56220"))()
end)

-- ====== BOTÃO 3: TEST ID ======
local btn3 = criarBotao("Test ID", 2)
btn3.MouseButton1Click:Connect(function()

	-- TUDO o script gigantesco que você enviou
	loadstring([[
-- === GUI PRINCIPAL ===
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

-- === SOM ===
local sound = Instance.new("Sound")
sound.Parent = gui
sound.Volume = 1

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 230)
frame.Position = UDim2.new(0.5, -130, 0.5, -115)
frame.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
frame.BorderSizePixel = 0
frame.Parent = gui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = frame

-- === TÍTULO ===
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 25)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(255, 80, 160)
title.Text = "🌸🎀 Test ID 🎀🌸"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = frame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = title

-- === ID TEXTBOX ===
local box = Instance.new("TextBox")
box.Size = UDim2.new(1, -20, 0, 30)
box.Position = UDim2.new(0, 10, 0, 35)
box.PlaceholderText = "Digite só o ID"
box.Text = ""
box.TextColor3 = Color3.fromRGB(255,255,255)
box.BackgroundColor3 = Color3.fromRGB(255, 150, 220)
box.Parent = frame

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0, 8)
boxCorner.Parent = box

-- === Botões ===
local startBtn = Instance.new("TextButton")
startBtn.Size = UDim2.new(0.45, 0, 0, 35)
startBtn.Position = UDim2.new(0.05, 0, 0, 80)
startBtn.Text = "Iniciar"
startBtn.BackgroundColor3 = Color3.fromRGB(0,150,0)
startBtn.TextColor3 = Color3.fromRGB(255,255,255)
startBtn.Parent = frame

local startCorner = Instance.new("UICorner")
startCorner.CornerRadius = UDim.new(0, 8)
startCorner.Parent = startBtn

local stopBtn = Instance.new("TextButton")
stopBtn.Size = UDim2.new(0.45, 0, 0, 35)
stopBtn.Position = UDim2.new(0.5, 0, 0, 80)
stopBtn.Text = "Parar"
stopBtn.BackgroundColor3 = Color3.fromRGB(150,0,0)
stopBtn.TextColor3 = Color3.fromRGB(255,255,255)
stopBtn.Parent = frame

local stopCorner = Instance.new("UICorner")
stopCorner.CornerRadius = UDim.new(0, 8)
stopCorner.Parent = stopBtn

-- === SLIDER VOLUME ===
local volumeLabel = Instance.new("TextLabel")
volumeLabel.Size = UDim2.new(1, 0, 0, 20)
volumeLabel.Position = UDim2.new(0, 0, 0, 125)
volumeLabel.BackgroundTransparency = 1
volumeLabel.Text = "Volume: 1"
volumeLabel.TextColor3 = Color3.fromRGB(255,255,255)
volumeLabel.Font = Enum.Font.Gotham
volumeLabel.TextSize = 14
volumeLabel.Parent = frame

local volumeSlider = Instance.new("Frame")
volumeSlider.Size = UDim2.new(0.9, 0, 0, 10)
volumeSlider.Position = UDim2.new(0.05, 0, 0, 150)
volumeSlider.BackgroundColor3 = Color3.fromRGB(200, 80, 160)
volumeSlider.Parent = frame

local sliderCornerV = Instance.new("UICorner")
sliderCornerV.CornerRadius = UDim.new(0, 6)
sliderCornerV.Parent = volumeSlider

local knob = Instance.new("Frame")
knob.Size = UDim2.new(0, 12, 0, 12)
knob.Position = UDim2.new(1, -6, -0.1, 0)
knob.BackgroundColor3 = Color3.fromRGB(255,255,255)
knob.BorderSizePixel = 0
knob.Parent = volumeSlider

local knobCornerV = Instance.new("UICorner")
knobCornerV.CornerRadius = UDim.new(1, 0)
knobCornerV.Parent = knob

-- === NOME DA MÚSICA ===
local musicName = Instance.new("TextLabel")
musicName.Size = UDim2.new(1, -10, 0, 20)
musicName.Position = UDim2.new(0, 5, 0, 175)
musicName.BackgroundTransparency = 1
musicName.Text = "Música: ---"
musicName.TextColor3 = Color3.fromRGB(255, 255, 255)
musicName.Font = Enum.Font.Gotham
musicName.TextSize = 13
musicName.Parent = frame

-- === LOOP CHECKBOX ===
local loopCheckbox = Instance.new("TextButton")
loopCheckbox.Size = UDim2.new(0, 20, 0, 20)
loopCheckbox.Position = UDim2.new(0.05, 0, 0, 200)
loopCheckbox.BackgroundColor3 = Color3.fromRGB(255, 200, 230)
loopCheckbox.Text = ""
loopCheckbox.Parent = frame

local loopCorner = Instance.new("UICorner")
loopCorner.CornerRadius = UDim.new(0, 5)
loopCorner.Parent = loopCheckbox

local loopLabel = Instance.new("TextLabel")
loopLabel.Size = UDim2.new(0, 200, 0, 20)
loopLabel.Position = UDim2.new(0.15, 0, 0, 200)
loopLabel.BackgroundTransparency = 1
loopLabel.Text = "Loop"
loopLabel.TextColor3 = Color3.fromRGB(255,255,255)
loopLabel.Font = Enum.Font.Gotham
loopLabel.TextSize = 14
loopLabel.Parent = frame

local loopEnabled = false

loopCheckbox.MouseButton1Click:Connect(function()
	loopEnabled = not loopEnabled
	loopCheckbox.Text = loopEnabled and "✓" or ""
	sound.Looped = loopEnabled
end)

-- === Iniciar Música ===
startBtn.MouseButton1Click:Connect(function()
	local id = tonumber(box.Text)
	if id then
		sound.SoundId = "rbxassetid://" .. id
		sound:Play()

		task.delay(0.3, function()
			musicName.Text = "Música: " .. (sound.Name ~= "" and sound.Name or "Desconhecida")
		end)
	else
		box.Text = ""
		box.PlaceholderText = "ID inválido!"
	end
end)

-- === Parar Música ===
stopBtn.MouseButton1Click:Connect(function()
	sound:Stop()
end)

-- === Slider de Volume ===
local UIS = game:GetService("UserInputService")
local draggingKnob = false

knob.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingKnob = true
	end
end)

knob.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingKnob = false
	end
end)

UIS.InputChanged:Connect(function(input)
	if draggingKnob and input.UserInputType == Enum.UserInputType.MouseMovement then
		local sliderAbsPos = volumeSlider.AbsolutePosition.X
		local sliderAbsSize = volumeSlider.AbsoluteSize.X
		local mousePos = input.Position.X

		local percent = math.clamp((mousePos - sliderAbsPos) / sliderAbsSize, 0, 1)

		knob.Position = UDim2.new(percent, -6, -0.1, 0)
		sound.Volume = percent
		volumeLabel.Text = "Volume: " .. string.format("%.2f", percent)
	end
end)

-- === BOTÃO EXTERNO PARA ABRIR/FECHAR ===
local TweenService = game:GetService("TweenService")

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 40, 0, 40)
toggleButton.Position = UDim2.new(0, 10, 0.5, -20)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 120, 180)
toggleButton.Text = "🎵"
toggleButton.TextColor3 = Color3.fromRGB(255,255,255)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 18
toggleButton.Parent = gui

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(1, 0)
toggleCorner.Parent = toggleButton

local guiAberta = true
local posAberta = UDim2.new(0.5, -130, 0.5, -115)
local posFechada = UDim2.new(0.5, -130, 1.2, 0)

local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

toggleButton.MouseButton1Click:Connect(function()
	guiAberta = not guiAberta
	local alvo = guiAberta and posAberta or posFechada
	TweenService:Create(frame, tweenInfo, {Position = alvo}):Play()
end)

	]] )()
end)

--------------------------------------------------------------
-- FIM DO SCRIPT
--------------------------------------------------------------
