-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
    for _,effectEditor in pairs(EditorManager.getEffectEditors()) do
        createWindow().setEditor(effectEditor)
    end
end

function onFilter(subwindow)
    local name_filter = window.filter_name.getValue()
    if name_filter ~= '' and not subwindow.name.getValue():lower():find(name_filter:lower(), 1, true) then
        return false
    end
    local category_filter = window.filter_value_category.getValue()
    if category_filter ~= '' and not subwindow.getEditor().categories[category_filter] then
        return false
    end
    return true
end
