
local function buildEffect(sCommand, sParams)
    if EditorManager.areEditorsLoaded() then
        Interface.openWindow("effect_builder", "")
    else
        local msg = {
            font = "systemfont",
            icon = "turn_flag", --"roll_effect",
            text = "Couldn't open Effect Builder. No effect editors loaded!"
        }
        Comm.addChatMessage(msg)
    end
end

function onInit()
    Comm.registerSlashHandler("buildeffect", buildEffect)
    Comm.registerSlashHandler("effectbuilder", buildEffect)
end
