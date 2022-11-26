-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
    for _,effectEditor in pairs(EditorManager.getEffectEditors()) do
        local w = createWindow()
        w.name.setValue(effectEditor.label)
        w.category = Interface.getString(effectEditor.category)
        w.effect_editor = effectEditor
        w.raw_category = effectEditor.category
    end
end

function onFilter(subwindow)
    local name_filter = window.filter_name.getValue()
    if name_filter ~= '' and not subwindow.name.getValue():lower():find(name_filter:lower(), 1, true) then
        return false
    end
    local category_filter = window.filter_value_category.getValue()
    if category_filter ~= '' and category_filter ~= subwindow.category then
        return false
    end
    return true
end

function onSortCompare(w1, w2)
    return w1.name.getValue() >= w2.name.getValue()
end
