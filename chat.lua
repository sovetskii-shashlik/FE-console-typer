local CoreGui = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local consoleGui = Instance.new("ScreenGui")
consoleGui.Name = "ConsoleMessagesGUI"
consoleGui.Parent = CoreGui

local TopBarApp = CoreGui:WaitForChild("TopBarApp"):WaitForChild("TopBarApp")
local UnibarLeftFrame = TopBarApp:WaitForChild("UnibarLeftFrame")
local UnibarMenu = UnibarLeftFrame:WaitForChild("UnibarMenu")
local sausageHolder = UnibarMenu:WaitForChild("2")
local originalSize = sausageHolder.Size.X.Offset

local chatButton = Instance.new("TextButton")
chatButton.Text = "O"
chatButton.Font = Enum.Font.Code
chatButton.TextSize = 20
chatButton.TextColor3 = Color3.new(1, 1, 1)
chatButton.Size = UDim2.new(0, 48, 0, 48)
chatButton.AnchorPoint = Vector2.new(0.5, 0.5)
chatButton.Position = UDim2.new(0, originalSize + 18, 0.5, 0)
chatButton.BackgroundTransparency = 1
chatButton.Parent = sausageHolder

sausageHolder.Size = UDim2.new(0, originalSize + 48, 0, sausageHolder.Size.Y.Offset)

local mainFrame = Instance.new("Frame")
mainFrame.Parent = consoleGui
mainFrame.Size = UDim2.new(0, 450, 0, 300)
mainFrame.Position = UDim2.new(0.5, -210, 0, 10)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BackgroundTransparency = 0.5
mainFrame.BorderSizePixel = 0

local corner = Instance.new("UICorner")
corner.Parent = mainFrame
corner.CornerRadius = UDim.new(0.05, 0)

local title = Instance.new("TextLabel")
title.Parent = mainFrame
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.BackgroundTransparency = 0.7
title.TextColor3 = Color3.new(1, 1, 1)
title.Text = "Chat for exploiters"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Center
local corner = Instance.new("UICorner")
corner.Parent = title
corner.CornerRadius = UDim.new(0.5, 0)
local closeButton = Instance.new("TextButton")
closeButton.Parent = title
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -30, 0.5, -10)
closeButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
closeButton.BackgroundTransparency = 0.7
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 14

closeButton.MouseButton1Click:Connect(function()
    consoleGui.Enabled = not consoleGui.Enabled
end)

local chatBackground = Instance.new("Frame")
chatBackground.Parent = mainFrame
chatBackground.Size = UDim2.new(1, 0, 0.615, 0)
chatBackground.Position = UDim2.new(0, 0, 0, 30)
chatBackground.BackgroundColor3 = Color3.new(0, 0, 0)
chatBackground.BackgroundTransparency = 0.8
chatBackground.BorderSizePixel = 0

local messagesContainer = Instance.new("ScrollingFrame")
messagesContainer.Parent = chatBackground
messagesContainer.Size = UDim2.new(1, -10, 1, -10)
messagesContainer.Position = UDim2.new(0, 5, 0, 5)
messagesContainer.BackgroundTransparency = 1
messagesContainer.ScrollBarThickness = 4
messagesContainer.ScrollBarImageColor3 = Color3.new(0.5, 0.5, 0.5)
messagesContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
messagesContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
messagesContainer.ScrollingDirection = Enum.ScrollingDirection.Y

local listLayout = Instance.new("UIListLayout")
listLayout.Parent = messagesContainer
listLayout.Padding = UDim.new(0, 5)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder

local inputFrame = Instance.new("Frame")
inputFrame.Parent = mainFrame
inputFrame.Size = UDim2.new(1, 0, 0.285, 0)
inputFrame.Position = UDim2.new(0, 0, 0.715, 0)
inputFrame.BackgroundColor3 = Color3.new(0, 0, 0)
inputFrame.BackgroundTransparency = 0.6
inputFrame.BorderSizePixel = 0

local inputBackground = Instance.new("Frame")
inputBackground.Parent = inputFrame
inputBackground.Size = UDim2.new(1, -10, 0.6, 0)
inputBackground.Position = UDim2.new(0, 5, 0.05, 0)
inputBackground.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
inputBackground.BackgroundTransparency = 0.7

local inputCorner = Instance.new("UICorner")
inputCorner.Parent = inputBackground
inputCorner.CornerRadius = UDim.new(0.1, 0)

local textBox = Instance.new("TextBox")
textBox.Parent = inputBackground
textBox.Size = UDim2.new(1, -10, 1, -10)
textBox.Position = UDim2.new(0, 5, 0, 5)
textBox.BackgroundTransparency = 1
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.PlaceholderText = "enter text ..."
textBox.Text = ""
textBox.ClearTextOnFocus = false
textBox.TextWrapped = true
textBox.TextXAlignment = Enum.TextXAlignment.Left
textBox.TextYAlignment = Enum.TextYAlignment.Top
textBox.MultiLine = true
textBox.Font = Enum.Font.SourceSans
textBox.TextSize = 14

local sendButton = Instance.new("TextButton")
sendButton.Parent = inputFrame
sendButton.Size = UDim2.new(0.45, 0, 0.25, 0)
sendButton.Position = UDim2.new(0.025, 0, 0.7, 0)
sendButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
sendButton.BackgroundTransparency = 0.7
sendButton.TextColor3 = Color3.new(1, 1, 1)
sendButton.Text = "Send"
sendButton.Font = Enum.Font.SourceSans
sendButton.TextSize = 14

local sendAnonButton = Instance.new("TextButton")
sendAnonButton.Parent = inputFrame
sendAnonButton.Size = UDim2.new(0.45, 0, 0.25, 0)
sendAnonButton.Position = UDim2.new(0.525, 0, 0.7, 0)
sendAnonButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
sendAnonButton.BackgroundTransparency = 0.7
sendAnonButton.TextColor3 = Color3.new(1, 1, 1)
sendAnonButton.Text = "Send Anon"
sendAnonButton.Font = Enum.Font.SourceSans
sendAnonButton.TextSize = 14

local clearButton = Instance.new("TextButton")
clearButton.Parent = title
clearButton.Size = UDim2.new(0, 80, 0, 20)
clearButton.Position = UDim2.new(0, 10, 0.5, -10)
clearButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
clearButton.BackgroundTransparency = 0.7
clearButton.TextColor3 = Color3.new(1, 1, 1)
clearButton.Text = "Clear"
clearButton.Font = Enum.Font.SourceSans
clearButton.TextSize = 12

local messages = {}
local messageCount = 0
local lastMessageTime = {}

local function addMessage(fullText)
    if not fullText or fullText == "" then return end

    local currentTime = os.time()
    if lastMessageTime[fullText] then
        local timeDiff = currentTime - lastMessageTime[fullText]
        if timeDiff <= 0.5 then
            return
        end
    end

    lastMessageTime[fullText] = currentTime

    messageCount = messageCount + 1

    local messageFrame = Instance.new("Frame")
    messageFrame.Name = "Message_" .. messageCount
    messageFrame.Parent = messagesContainer
    messageFrame.Size = UDim2.new(1, 0, 0, 0)
    messageFrame.AutomaticSize = Enum.AutomaticSize.Y
    messageFrame.BackgroundTransparency = 1
    messageFrame.LayoutOrder = messageCount

    local textColor = Color3.new(0, 162, 255)

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = messageFrame
    textLabel.Size = UDim2.new(1, 0, 0, 0)
    textLabel.AutomaticSize = Enum.AutomaticSize.Y
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = textColor
    textLabel.Text = fullText
    textLabel.Font = Enum.Font.SourceSans
    textLabel.TextSize = 14
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.RichText = true

    table.insert(messages, {
        frame = messageFrame,
        text = fullText,
        time = currentTime
    })

    task.wait(0.05)
    messagesContainer.CanvasPosition = Vector2.new(0, messagesContainer.AbsoluteCanvasSize.Y)

    if #messages > 100 then
        local oldest = table.remove(messages, 1)
        if oldest and oldest.frame then
            oldest.frame:Destroy()
        end
    end

    for text, time in pairs(lastMessageTime) do
        if currentTime - time > 5 then
            lastMessageTime[text] = nil
        end
    end
end

local function parseConsoleMessage(messageText)
    local startPos = messageText:find("active://")
    if not startPos then return end

    local textStart = startPos + #"active://"
    local extractedText = messageText:sub(textStart)
    extractedText = extractedText:gsub("^[\n\r\t\s]+", "")

    local stackPositions = {
        extractedText:find("\n%s*Stack Begin"),
        extractedText:find("\n%s*Script '"),
        extractedText:find("\n%s*Stack End"),
        extractedText:find("\n%s*%.%.%."),
        extractedText:find("\n%s*'"),
    }

    local cutPosition = nil
    for _, pos in ipairs(stackPositions) do
        if pos and (not cutPosition or pos < cutPosition) then
            cutPosition = pos
        end
    end

    if cutPosition then
        extractedText = extractedText:sub(1, cutPosition - 1)
    end

    extractedText = extractedText:gsub("[\n\r\t\s]+$", "")
    extractedText = extractedText:gsub("[,%.]+$", "")

    if extractedText and #extractedText >= 2 then
        if not extractedText:match("^%d+") and
           not extractedText:match("^Animation") and
           not extractedText:match("^http[s]?://") and
           not extractedText:match("^Workspace%.") and
           not extractedText:match("^Line %d+") then

            addMessage(extractedText)
        end
    end
end

local function processSpecialChars(str)
    str = str:gsub("\\n", "\n")
    str = str:gsub("\\\\", "\\")
    str = str:gsub("\\t", "\t")
    return str
end

local console = game:GetService("LogService")
console.MessageOut:Connect(function(message, messageType)
    parseConsoleMessage(message)
end)

clearButton.MouseButton1Click:Connect(function()
    for _, msg in ipairs(messages) do
        if msg.frame then
            msg.frame:Destroy()
        end
    end
    messages = {}
    messageCount = 0
    lastMessageTime = {}
end)

sendButton.MouseButton1Click:Connect(function()
    if textBox.Text ~= "" then
        local playerName = game.Players.LocalPlayer.Name
        local processedText = processSpecialChars(playerName .. ": " .. textBox.Text)
        _G.text = processedText
        loadstring(game:HttpGet("https://glot.io/snippets/h8smvroz9f/raw/consys.lua"))()
        textBox.Text = ""
    end
end)

sendAnonButton.MouseButton1Click:Connect(function()
    if textBox.Text ~= "" then
        local processedText = processSpecialChars("[anonim]: " .. textBox.Text)
        _G.text = processedText
        loadstring(game:HttpGet("https://glot.io/snippets/h8smvroz9f/raw/consys.lua"))()
        textBox.Text = ""
    end
end)

mainFrame.Active = true
mainFrame.Draggable = true

game:GetService("RunService").Heartbeat:Connect(function()
    local currentTime = os.time()
    for i = #messages, 1, -1 do
        local msg = messages[i]
        if currentTime - msg.time > 900 then
            if msg.frame then
                msg.frame:Destroy()
            end
            table.remove(messages, i)
        end
    end
end)

chatButton.MouseButton1Click:Connect(function()
    consoleGui.Enabled = not consoleGui.Enabled
    chatButton.Text = consoleGui.Enabled and "C" or "O"
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if sausageHolder.Size.X.Offset ~= originalSize + 36 then
        sausageHolder.Size = UDim2.new(0, originalSize + 48, 0, sausageHolder.Size.Y.Offset)
    end
end)

consoleGui.Enabled = true
chatButton.Text = "C"