extensions = {}

function onInit()
    for index, name in pairs(Extension.getExtensions()) do
         extensions[name] = index
    end

    Extension.isExtensionLoaded = isExtensionLoaded
    Extension.isEffectBuilderRulesetPluginLoaded = isRulesetPluginLoaded
end

function isExtensionLoaded(extensionName)
    return extensions[extensionName]
end

local rulesetPluginLoaded = false
function isRulesetPluginLoaded()
    return rulesetPluginLoaded
end

function setRulestPluginLoaded(isLoaded)
    rulesetPluginLoaded = isLoaded
end
