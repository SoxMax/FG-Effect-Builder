-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
    for _,category in pairs(EditorManager.getCategories()) do
        for key, editor in pairs(EditorManager.getCategoryEffects(category)) do
            local w = createWindow()
            w.category.setValue(Interface.getString(category))
            w.name.setValue(editor.label)
            w.effect_editor = editor
            w.raw_category = category
        end
    end
end
