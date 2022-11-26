function updateEditor()
    setValue(EditorManager.getEffect(window.effect.getCategory(), window.effect.getStringValue()).windowclass)
    updateEffectString()
end


function updateEffectString()
    window.effect_description.setValue(subwindow.createEffectString())
end
