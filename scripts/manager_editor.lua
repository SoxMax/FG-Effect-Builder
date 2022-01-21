local editorBundles = {}

function addEditor(category, editor)

    Debug.console(category, editor)
    if not category and not editor then
        return
    end
    
    if type(editor) == "string" then
        Debug.console("Is String!")
        editor = { labelres=editor, value=editor, windowclass="editor_" .. editor }
    end
    
    Debug.console(editorBundles)
    if editorBundles[category] then
        if not editorBundles[category][editor.value] then
            editorBundles[category][editor.value] = editor
        else
            Debug.console("WARNING: Attempt to load editor that already exists!")
        end
    else
        editorBundles[category] = { [editor.value] = editor }
    end
end

function getCategories()
    local categories = {}
    for bundle,_ in pairs(editorBundles) do
        table.insert(categories, bundle)
    end
    return categories
end

function getCategoryEffects(category)
    return editorBundles[category]
end

function getCategoriesAsCyclerParams()
    local defaultlabel = ""
    local defaultvalue = ""
    local labels = {}
    local values = {}
    local index = 1
    for category,_ in pairs(editorBundles) do
        local label = Interface.getString(category)
        if not label or label == "" then
            label = category
        end 
        if index == 1 then
            defaultlabel = label
            defaultvalue = category
        else
            table.insert(labels, label)
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
            defaultlabel = (Interface.getString(effect.labelres) or effect.labelres)
            defaultvalue = effect.value
        else
            table.insert(labels, (Interface.getString(effect.labelres) or effect.labelres))
            table.insert(values, effect.value)
        end
        index = index + 1
    end
    return defaultlabel, defaultvalue, table.concat(labels, "|"), table.concat(values, "|")
end

function getEffect(category, effect)
    return editorBundles[category][effect]
end

function isEffectBuilderPluginLoaded()
    for _, v in pairs(Extension.getExtensions()) do
        if v:match("Effect-Builder-Plugin") then
            return true
        end
    end
    return false
end
