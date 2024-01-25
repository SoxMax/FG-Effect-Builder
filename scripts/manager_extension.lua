extensions = {}

function onInit()
    for index, name in pairs(Extension.getExtensions()) do
         extensions[name] = index
    end

    Extension.isExtensionLoaded = isExtensionLoaded
    Extension.isEffectBuilderRulesetPluginLoaded = false
end

function isExtensionLoaded(extensionName)
    return extensions[extensionName]
end

function setRulestPluginLoaded(isLoaded)
    Extension.isEffectBuilderRulesetPluginLoaded = isLoaded
end
