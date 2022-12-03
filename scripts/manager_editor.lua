local function getInterfaceString(string)
    local label = Interface.getString(string)
    if label and label ~= "" then
        return label
    end
    return string
end

local effectEditors = {}

-- Deprecated. Exists for compatibility
function addEditor(category, editor)
    if not editor then
        return
    end
    if not editor.categoryres then
        editor.categoryres = category
        editor.category = nil
    end
    addEffectEditor(editor)
end

function addEffectEditor(editor)
    if not editor then
        return
    end
    if type(editor) == "string" then
        editor = { labelres=editor, value=editor, windowclass="editor_" .. editor }
    end
    if not editor.labelres then
        editor.labelres = getInterfaceString(editor.value)
    end
    if not editor.label then
        editor.label = getInterfaceString(editor.labelres)
    end
    if not editor.category then
        editor.category = getInterfaceString(editor.categoryres)
    end
    if effectEditors[editor.value] then
        Debug.console("WARNING: Overriding editor " .. editor.value .. " that already exists!")
    end
    effectEditors[editor.value] = editor
end

function getCategories()
    local categories = {}
    for _,editor in pairs(effectEditors) do
        categories[editor.category] = getInterfaceString(editor.category)
    end
    return categories
end

function areEditorsLoaded()
    return next(effectEditors)
end

function getEffectEditors()
    return effectEditors
end

function getEffectEditor(effectName)
    return effectEditors[effectName]
end
