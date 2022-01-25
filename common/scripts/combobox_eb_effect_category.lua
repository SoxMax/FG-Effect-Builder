function onInit()
    super.onInit()

    for _,category in ipairs(EditorManager.getCategoriesAsComboboxParams()) do
        add(category.value, category.text)
    end
    setListIndex(1)
end

function onValueChanged()
    window.effect.updateEffects()
    window.effect_editor.updateEditor()
end
