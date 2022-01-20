function onInit()
    super.onInit()

    local defaultlabel, defaultvalue, labels, values = EditorManager.getCategoriesAsCyclerParams()
    initialize(labels, values, defaultlabel, nil, defaultvalue)
    updateDisplay()
end

function onValueChanged()
    window.effect.updateEffects()
end
