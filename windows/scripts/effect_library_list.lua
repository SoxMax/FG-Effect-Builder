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

function onFilter(subwindow)
    local name_filter = window.filter_name.getValue()
    if name_filter ~= '' and not subwindow.name.getValue():lower():find(name_filter:lower(), 1, true) then
        return false
    end
    local category_filter = window.filter_value_category.getValue()
    if category_filter ~= '' and category_filter ~= subwindow.category.getValue() then
        return false
    end
    return true
end
