function updateEffectEditor()
    window.effect_editor.setValue(effect.getStringValue())
end

function onValueChanged()
    updateEffectEditor()
    super.onValueChanged()
end