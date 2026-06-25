function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue()
    local healType = heal_type.getStringValue()
    if healType ~= "" then
        effectString = effectString .. ": " .. healType
    end
    return effectString
end
