local function getInterfaceString(string)
    local label = Interface.getString(string)
    if label and label ~= "" then
        return label
    end
    return string
end

local editorBundles = {}

function addEditor(category, editor)
    if not category and not editor then
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
        editor.category = category
    end
    if editorBundles[category] then
        if editorBundles[category][editor.value] then
            Debug.console("WARNING: Overriding editor " .. editor.value .. " in category " .. category .. " that already exists!")
        end
        editorBundles[category][editor.value] = editor
    else
        editorBundles[category] = { [editor.value] = editor }
    end
end

function getCategories()
    local categories = {}
    for category,_ in pairs(editorBundles) do
        table.insert(categories, category)
    end
    return categories
end

function getCategoryEffects(category)
    return editorBundles[category]
end

function getCategoriesAsComboboxParams()
    local categories = {}
    for category,_ in pairs(editorBundles) do
        table.insert(categories, {value=category, text=getInterfaceString(category)})
    end
    return categories
end

function getCategoriesAsCyclerParams()
    local defaultlabel = ""
    local defaultvalue = ""
    local labels = {}
    local values = {}
    local index = 1
    for category,_ in pairs(editorBundles) do
        if index == 1 then
            defaultlabel = getInterfaceString(category)
            defaultvalue = category
        else
            table.insert(labels, getInterfaceString(category))
            table.insert(values, category)
        end
        index = index + 1
    end
    return defaultlabel, defaultvalue, table.concat(labels, "|"), table.concat(values, "|")
end

function getCategoryEffectsAsCyclerParams(category)
    local defaultlabel = ""
    local defaultvalue = ""
    local labels = {}
    local values = {}
    local index = 1
    for _,effect in pairs(getCategoryEffects(category)) do
        if index == 1 then
            defaultlabel = effect.label
            defaultvalue = effect.value
        else
            table.insert(labels, effect.label)
            table.insert(values, effect.value)
        end
        index = index + 1
    end
    return defaultlabel, defaultvalue, table.concat(labels, "|"), table.concat(values, "|")
end

function getEffect(category, effect)
    return editorBundles[category][effect]
end

function areEditorsLoaded()
    local category, effects = next(editorBundles)
    return category and next(effects)
end
