#  Library
This documentation is for the Library.

## Booting the Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BLACKOUUT575/OS-Roblox-/main/Source"))()

```



## Creating a Window
```lua
local gui = Library:create{
    Theme = Library.Themes.Serika

```



## Creating a Tab
```lua
local tab = gui:tab{
    Icon = "rbxassetid",
    Name = "TAB NAME"
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
]]
```

## Notifying the user
EXAMPLE:
```lua
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
})

--[[
Title = <string> - The title of the notification.
TEXT = <string> - The content of the notification.
Function = <string> - The icon of the notification.
]]
```



## Creating a Button
```lua
tab:button({
    Name = "NAME of BUTTON",
    Callback = function()
      		print("button pressed") --[[print the function in Game]]
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
```




## Creating a Color Picker
```lua
Tab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})

--[[
tab:color_picker({
    Name = "your mom's color",
    Style = Library.ColorPickerStyles.Legacy,
    Description = "Click to adjust color...",
    Callback = function(color)
        print(color)
    end,
]]
```

### Setting the color picker's value
```lua
ColorPicker:Set(Color3.fromRGB(255,255,255))
```


## Creating a Slider
```lua
local cum = tab:slider({Callback = function(v)

    gui:set_status(v)
end})
})



## Creating an Adaptive Input
```lua

tab:textbox({Callback = function(v)
    gui:prompt{Text = v}
end,})
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]
```


## Creating a Keybind
```lua
Tab:AddBind({
	Name = "Bind",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
		print("press")
	end    
})

--[[
Name = <string> - The name of the bind.
Default = <keycode> - The default value of the bind.
Hold = <bool> - Makes the bind work like: Holding the key > The bind returns true, Not holding the key > Bind returns false.
Callback = <function> - The function of the bind.
]]
```

### Chaning the value of a bind
```lua
Bind:Set(Enum.KeyCode.E)
```


## Creating a Dropdown menu
```lua
tab:dropdown({
    Name = "yes",
    StartingText = "Number",
    Items = {
        {"One", 1},
        {"Two", 2},
        {"Three", 3}
    },

--[[
Name = <string> - The name of the dropdown.
Default = <string> - The default value of the dropdown.
Items = <table> - The options in the dropdown.
Callback = <function> - The function of the dropdown.
]]
```
