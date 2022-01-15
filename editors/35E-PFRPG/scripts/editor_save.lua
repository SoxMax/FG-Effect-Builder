function createEffectString()
    local effectString = "SAVE: " .. effect_modifier.getValue()
    if effect.getStringValue() ~= "" and not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. effect.getStringValue() .. "," .. effect_bonus_type.getValue()
    elseif effect.getStringValue() ~= "" then
        effectString = effectString .. " " .. effect.getStringValue()
    elseif not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. effect_bonus_type.getValue()
    end
    return effectString
end
