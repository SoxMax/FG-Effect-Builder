function onInit()
    updateEditor()
end

function updateEditor()
    setValue(EditorManager.getEffect(window.effect_category.getStringValue(), window.effect.getStringValue()).windowclass)
end

function updateEffectString(effectString)
    window.effect_description.setValue(effectString)
end
