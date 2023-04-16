function createEffectString()
    local effectString = "VISION: " .. number_value.getValue()
    if not vision_type.isEmpty() then
        effectString = effectString .. " " .. vision_type.getValue()
    end
    return effectString
end
