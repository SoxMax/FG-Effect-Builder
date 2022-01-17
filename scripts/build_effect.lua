
local function buildEffect(sCommand, sParams)
    Interface.openWindow("effect_builder", "")
end

function onInit()
    if EffectLoader.editorBundles then
        Comm.registerSlashHandler("buildeffect", buildEffect)
        Comm.registerSlashHandler("effectbuilder", buildEffect)
    else
        Debug.chat("No bundles loaded! Effect builder disabled!")
    end
end
