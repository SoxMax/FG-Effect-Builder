local function updateEffectString(effectString)
    window.parentcontrol.window.updateEffectString(effectString)
end

function onValueChanged()
    updateEffectString(window.createEffectString())
end
