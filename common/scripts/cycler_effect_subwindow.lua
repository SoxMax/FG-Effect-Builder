function updateEffectEditor()
    window.effect_editor.setValue("editor_" .. effect.getStringValue())
end

function onValueChanged()
    updateEffectEditor()
    super.onValueChanged()
end