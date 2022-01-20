
local function buildEffect(sCommand, sParams)
    Interface.openWindow("effect_builder", "")
end

function onInit()
    Comm.registerSlashHandler("buildeffect", buildEffect)
    Comm.registerSlashHandler("effectbuilder", buildEffect)
end
