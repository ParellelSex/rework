repeat task.wait() until game:IsLoaded()
game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
if not shared.Executed then
shared.Executed = true
syn.queue_on_teleport(game:HttpGet('https://raw.githubusercontent.com/ParellelSex/rework/main/main.lua'))
local Color = Color3.fromRGB(25, 25, 25)
local SecondaryColor = Color3.fromRGB(25, 25, 25)
local CoreGui = game:GetService("CoreGui")
local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
local TweenService = game:GetService("TweenService")
local Blur = Instance.new("BlurEffect", game:GetService("Lighting"))
Blur.Size = 0
local function Change(obj)
    for _,v in pairs(obj:GetDescendants()) do
        if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextLabel") then
            v.Font = Enum.Font.SourceSans
            v.Text = v.Text:lower()
        end
        if v:IsA("Frame") or v:IsA("ScrollingFrame") then
            if v.Name ~= "SettingsShield" then
                v.BackgroundColor3 = Color
            end
        end
        if v:IsA("ImageLabel") or v:IsA("ImageButton") then
            if v.Name ~= "Icon" and v.Name ~= "RightButton" and v.Name ~= "LeftButton" then
                v.BackgroundColor3 = Color
                v.ImageColor3 = Color
            else
                v.BackgroundColor3 = SecondaryColor
            end
        end
        if v:IsA("ImageLabel") or v:IsA("ImageButton") then
            if v.Name ~= "Icon" then
                v:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
                    v.BackgroundColor3 = Color
                end)
                v:GetPropertyChangedSignal("ImageColor3"):Connect(function()
                    v.ImageColor3 = Color
                end)
                if v.Image == "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png" then
                    v.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
                elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png" then
                    v.Image = "rbxasset://textures/ui/Settings/Slider/BarLeft.png"
                    v.ImageColor3 = Color3.fromRGB(255,255,255)
                elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png" then
                    v.Image = "rbxasset://textures/ui/Settings/Slider/BarRight.png"
                    v.ImageColor3 = Color3.fromRGB(255,255,255)
                end
            else
                v:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
                    v.BackgroundColor3 = SecondaryColor
                end)
            end
        end
        --dsadas
        if v:IsA("ImageLabel") or v:IsA("ImageButton") then
            if v.Name ~= "Icon" and v.Name ~= "RightButton" and v.Name ~= "LeftButton" then
                v:GetPropertyChangedSignal("BackgroundColor3"):connect(function()
                    if v.BackgroundColor3 == Color3.fromRGB(0, 162, 255) then
                        v.BackgroundColor3 = Color3.fromRGB(255,255,255)
                    end
                end)
                pcall(function()
                    v:GetPropertyChangedSignal("Image"):connect(function(IMG)
                        if v.Image == "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png" then
                            v.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
                        elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png" then
                            v.Image = "rbxasset://textures/ui/Settings/Slider/BarLeft.png"
                            v.ImageColor3 = Color3.fromRGB(255,255,255)
                        elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png" then
                            v.Image = "rbxasset://textures/ui/Settings/Slider/BarRight.png"
                            v.ImageColor3 = Color3.fromRGB(255,255,255)
                        end
                    end)
                end)
                pcall(function()
                    v:GetPropertyChangedSignal("ImageColor3"):connect(function()
                        if v.ImageColor3 == Color3.fromRGB(0, 162, 255) then
                            v.ImageColor3 = Color3.fromRGB(255,255,255)
                        end
                    end)
                end)
            --v.ImageColor3 = Color
            end
        end
    end
    obj.DescendantAdded:Connect(function(v)
        if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
            v.Font = Enum.Font.SourceSans
            v.Text = v.Text:lower()
        end
        if v:IsA("Frame") or v:IsA("ScrollingFrame") then
            if v.Name ~= "SettingsShield" then
                v.BackgroundColor3 = Color
            end
        end
        if v:IsA("ImageLabel") or v:IsA("ImageButton") then
            if v.Name ~= "Icon" and v.Name ~= "RightButton" and v.Name ~= "LeftButton" then
                v.BackgroundColor3 = Color
                v.ImageColor3 = Color
            if v.Image == "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png" then
                v.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
            elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png" then
                v.Image = "rbxasset://textures/ui/Settings/Slider/BarLeft.png"
                v.ImageColor3 = Color3.fromRGB(255,255,255)
            elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png" then
                v.Image = "rbxasset://textures/ui/Settings/Slider/BarRight.png"
                v.ImageColor3 = Color3.fromRGB(255,255,255)
            end
            else
                v.BackgroundColor3 = SecondaryColor
            end
        end
        if v:IsA("ImageLabel") or v:IsA("ImageButton") then
            if v.Name ~= "Icon" and v.Name ~= "RightButton" and v.Name ~= "LeftButton" then
                v:GetPropertyChangedSignal("BackgroundColor3"):connect(function()
                    if v.BackgroundColor3 == Color3.fromRGB(0, 162, 255) then
                        v.BackgroundColor3 = Color3.fromRGB(255,255,255)
                    end
                end)
                pcall(function()
                    v:GetPropertyChangedSignal("Image"):connect(function()
                        if v.Image == "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png" then
                            v.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
                            --rbxasset://textures/ui/Settings/Slider/BarLeft.png
                        elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png" then
                            v.Image = "rbxasset://textures/ui/Settings/Slider/BarLeft.png"
                            v.ImageColor3 = Color3.fromRGB(255,255,255)
                        elseif v.Image == "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png" then
                            v.Image = "rbxasset://textures/ui/Settings/Slider/BarRight.png"
                            v.ImageColor3 = Color3.fromRGB(255,255,255)
                        end
                    end)
                end)
                pcall(function()
                    v:GetPropertyChangedSignal("ImageColor3"):connect(function()
                        if v.ImageColor3 == Color3.fromRGB(0, 162, 255) then
                            v.ImageColor3 = Color3.fromRGB(255,255,255)
                        end
                    end)
                end)
            end
        end
    end)
end
Change(CoreGui.RobloxGui)--.SettingsShield
CoreGui.RobloxGui:WaitForChild("SettingsShield")
CoreGui.RobloxGui.SettingsShield:WaitForChild("SettingsShield")
CoreGui.RobloxGui.SettingsShield.SettingsShield.BackgroundColor3 = Color3.fromRGB(0,0,0)
CoreGui.RobloxGui.SettingsShield.SettingsShield.Transparency = 1
local vis = CoreGui.RobloxGui.SettingsShield.SettingsShield.Visible
CoreGui.RobloxGui.SettingsShield.SettingsShield:GetPropertyChangedSignal("BackgroundTransparency"):connect(function(tr)
    CoreGui.RobloxGui.SettingsShield.SettingsShield.BackgroundTransparency = 1
end)
CoreGui.RobloxGui.SettingsShield.SettingsShield:GetPropertyChangedSignal("Visible"):Connect(function()
    vis = not vis
    if vis == true then
        TweenService:Create(Blur, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = 15}):Play()
    else
        TweenService:Create(Blur, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = 0}):Play()
    end
end)
spawn(function()
    repeat task.wait() until game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame:WaitForChild("LeaveGamePage")
    local Clone = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.LeaveGamePage.LeaveGameText.LeaveButtonContainer.DontLeaveGameButton:Clone()
    Clone.Parent = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.LeaveGamePage.LeaveGameText.LeaveButtonContainer
    Clone.DontLeaveGameTextLabel.Text = "rejoin"
    Clone.MouseButton1Down:Connect(function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end)
end)
spawn(function()
    repeat task.wait() until game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame:WaitForChild("ResetCharacter")
    local Clone = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.ResetCharacter.ResetCharacterText.ResetButtonContainer.DontResetCharacterButton:Clone()
    Clone.Parent = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.ResetCharacter.ResetCharacterText.ResetButtonContainer
    Clone.DontResetCharacterTextLabel.Text = "refresh"
    Clone.MouseButton1Down:Connect(function()
        local OldCF = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
        keypress(0x52) wait() keyrelease(0x52)
        wait()
        keypress(0x0D) wait() keyrelease(0x0D)
        wait(game.Players.RespawnTime + 0.5)
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = OldCF
    end)
end)
end
