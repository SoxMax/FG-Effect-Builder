function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. effect_modifier.getValue()
    local save_type = save_type.getStringValue()
    if save_type ~= "" and not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. save_type .. "," .. effect_bonus_type.getValue()
    elseif save_type ~= "" then
        effectString = effectString .. " " .. effect.getStringValue()
    elseif not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. effect_bonus_type.getValue()
    end
    return effectString
end
