-- Radial Menu Positions
local menuCopy = 8

function onInit()
    registerMenuItem(Interface.getString("chatclipboard"), "chatclipboard", menuCopy)
end

function onMenuSelection(selection)
    Debug.chat(selection)
    if selection == menuCopy then
        Interface.clipboardSetText(getValue())
    end
end

function onDragStart(button, x, y, draginfo)
    if isEmpty() then
        return nil
    end
    -- return ActionEffect.performRoll(draginfo, nil, {sName = getValue()})

    draginfo.setType("string")
    draginfo.setDescription(getValue())
    draginfo.setStringData(getValue())

    return true
end