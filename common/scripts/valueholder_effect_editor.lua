local function updateEffectString(effectString)
    window.parentcontrol.updateEffectString(effectString)
end

function onValueChanged()
    if super and super.onValueChanged then
        super.onValueChanged()
    end
    updateEffectString(window.createEffectString())
end
