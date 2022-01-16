function updateEffectEditor()
    window.effect_editor.setValue(getStringValue())
end

function onValueChanged()
    updateEffectEditor()
    super.onValueChanged()
end