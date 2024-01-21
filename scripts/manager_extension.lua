extensions = {}

function onInit()
    for index, name in pairs(Extension.getExtensions()) do
         extensions[name] = index
    end

    Extension.isExtensionLoaded = isExtensionLoaded
    Extension.isEffectBuilderLoaded = isRulesetPluginLoaded
end

function isExtensionLoaded(extensionName)
    return extensions[extensionName]
end

local rulsetPluginLoaded = false
function isRulesetPluginLoaded()
    return rulsetPluginLoaded
end

function setRulestPluginLoaded(isLoaded)
    rulsetPluginLoaded = isLoaded
end
