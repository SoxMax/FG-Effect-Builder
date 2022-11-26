
function buildEffect(sCommand, sParams)
    if EditorManager.areEditorsLoaded() then
        Interface.openWindow("effect_builder", "")
        Interface.openWindow("effect_library", "")
    else
        local msg = {
            font = "systemfont",
            icon = "turn_flag",
            text = "Couldn't open Effect Builder. No effect editors loaded!"
        }
        Comm.addChatMessage(msg)
    end
end

function onInit()
    Comm.registerSlashHandler("buildeffect", buildEffect)
    Comm.registerSlashHandler("effectbuilder", buildEffect)
end
