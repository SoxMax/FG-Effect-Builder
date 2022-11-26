function updateEffectString()
    window.effect_description.setValue(subwindow.createEffectString())
end

function onValueChanged()
    updateEffectString()
end
