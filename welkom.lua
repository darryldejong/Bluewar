game.Players.PlayerAdded:Connect(function(player)
    print(player.Name .. " Is bluewar gejoint")

    player.CharacterAdded:Wait()

    local message = "Welkom in het spel, " .. player.Name .. "! Veel plezier!"
    game:GetService("Chat"):Chat(player.Character.Head, message, Enum.ChatColor.Green)

    task.wait(2)

    local starterGui = player:WaitForChild("PlayerGui")
    local welcomeGui = starterGui:FindFirstChild("ScreenGui")

    if welcomeGui then
        local label = welcomeGui:FindFirstChild("WelcomeLabel")
        if label then
            label.Text = message
            label.Visible = true

            task.delay(5, function()
                label.Visible = false
            end)
        end
    end
end)
