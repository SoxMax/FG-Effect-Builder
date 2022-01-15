function updateEffectEditor()
    effect_editor.setValue("editor_" .. effect.getStringValue())
end

function createEffectString()
    return effect_editor.subwindow.createEffectString()
end
