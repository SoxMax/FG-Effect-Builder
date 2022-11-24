-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
    for _,category in pairs(EditorManager.getCategories()) do
        for key, editor in pairs(EditorManager.getCategoryEffects(category)) do
            -- Debug.chat(category, key, editor)
            local w = createWindow()
            w.category.setValue(Interface.getString(category))
            w.name.setValue(editor.label)
            w.effect_editor = editor
        end
    end
end
