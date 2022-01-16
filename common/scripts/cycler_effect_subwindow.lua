function updateEffectEditor()
    window.effect_editor.setValue(window.effect.getStringValue())
end

function onValueChanged()
    updateEffectEditor()
    super.onValueChanged()
end