function createEffectString()
    local effectString = "LIGHT: " .. number_value.getStringValue()
    if not light_type.isEmpty() then
        effectString = effectString .. " " .. light_type.getValue()
    end
    return effectString
end
