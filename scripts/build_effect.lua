
local function buildEffect(sCommand, sParams)
    if EditorLoader.editorBundles then
        Interface.openWindow("effect_builder", "")
    else
        Debug.chat("No bundles loaded! Effect builder disabled!")
end

function onInit()
        Comm.registerSlashHandler("buildeffect", buildEffect)
        Comm.registerSlashHandler("effectbuilder", buildEffect)
    end
end
