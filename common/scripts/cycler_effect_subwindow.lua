function updateEffectEditor()
    window.effect_editor.setValue(EditorManager.getEffect(window.effect_category.getStringValue(), getStringValue()).windowclass)
end

function onValueChanged()
    updateEffectEditor()
    super.onValueChanged()
end