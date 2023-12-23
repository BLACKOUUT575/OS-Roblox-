local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BLACKOUUT575/OS-Roblox-/main/Source"))()

local gui = Library:create{
    Theme = Library.Themes.Serika
}

local tab = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "Aimbot"
}
tab:button({
    Name = "ESP",
    Callback = function()
    end,
    })
        tab:prompt{
            Title = "ESP",
            Text = "ESP Now Active",
            Buttons = {
                Ok = function()
                    tab:prompt{
                        Followup = true,
                        Title = "Loading....",
                        Text = "Bypass Anti Cheat",
                        Buttons = {
                            Yes = function()
                                tab:prompt{
                                    Followup = true,
                                    Title = "Byfron Bypass",
                                    Text = "Bypassed Anti Cheat",
                                    Buttons = {
                                        Execute = function()
                                            gui:set_status("ESP ACTIVE")
                                        end,
                                        Exit = function()
                                            gui:set_Status("ESP Not Active")
                                        end
                                    }
                                }
                            end,
                        }
                    }
                end,
            }
        }


tab:keybind({Callback = function()
    gui:prompt()
end,})
tab:dropdown({
    Name = "Dropdown",
    Description = "yeeeeeeeeeeeeeeeeeeeboi",
    StartingText = "Bodypart",
    Items = {
        "Head",
        "Torso",
        "Random"
    }
})
tab:dropdown({
    Name = "yes",
    StartingText = "Number",
    Items = {
        {"One", 1},
        {"Two", 2},
        {"Three", 3}
    },
    Description = "amongu s",
    Callback = function(v)
        print(v, "clicked")
    end,
})
local cum = tab:slider({Callback = function(v)
    gui:set_status(v)
end})

tab:textbox({Callback = function(v)
    gui:prompt{Text = v}
end,})

tab:color_picker({
    Name = "your mom's color",
    Style = Library.ColorPickerStyles.Legacy,
    Description = "Click to adjust color...",
    Callback = function(color)
        print(color)
    end,
})
