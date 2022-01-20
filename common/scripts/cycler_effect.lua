function onInit()
    super.onInit()

    updateEffects()
end

function updateEffects()
    local defaultlabel, defaultvalue, labels, values = EditorManager.getCategoryEffectsAsCyclerParams(window.effect_category.getStringValue())
    initialize(labels, values, defaultlabel, nil, defaultvalue)
    updateDisplay()
end

function onValueChanged()
    window.effect_editor.updateEditor()
end
