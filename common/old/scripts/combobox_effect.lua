function onInit()
    super.onInit()

    updateEffects()
end

function updateEffects()
    clear()
    for _,effect in pairs(EditorManager.getCategoryEffects(window.effect_category.getStringValue())) do
        add(effect.value, effect.label)
    end
    setListIndex(1)
end

function updateWidth()
    local width = math.max(100, #getValue() * 6.5)
    setSize(width, 20)
end

function onValueChanged()
    -- updateWidth()
    window.effect_editor.updateEditor()
end
