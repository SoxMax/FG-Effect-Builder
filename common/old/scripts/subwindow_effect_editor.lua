function onInit()
    updateEditor()
end

function updateEditor()
    setValue(EditorManager.getEffect(window.effect_category.getStringValue(), window.effect.getStringValue()).windowclass)
    updateEffectString()
end


function updateEffectString()
    window.effect_description.setValue(subwindow.createEffectString())
end
