function createEffectString()
    local effectString = "LIGHT: " .. number_value.getStringValue()
    if light_type.isEmpty() then
        effectString = effectString .. " " .. color.getValue()
        if not light_fx.isEmpty() then
            effectString = effectString .. " " .. light_fx.getValue() .. " " .. frequency.getValue()
        end
    else
        effectString = effectString .. " " .. light_type.getValue()
    end
    return effectString
end
