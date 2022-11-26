local effect_definition = nil

function updateEffect(effect)
    effect_definition = effect
    setValue(effect_definition.label)
end

function getStringValue()
    return effect_definition.value
end

function getCategory()
    return effect_definition.category
end

function onValueChanged()
    window.effect_editor.updateEditor()
end
