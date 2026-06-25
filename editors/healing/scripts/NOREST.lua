function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue()
    local restType = rest_type.getStringValue()
    if restType ~= "" then
        effectString = effectString .. ": " .. restType
    end
    return effectString
end
