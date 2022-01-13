function createEffectString()
    local effectString = "SAVE: " .. save_modifier.getValue()
    if save.getStringValue() ~= "" and not save_bonus_type.isEmpty() then
        effectString = effectString .. " " .. save.getStringValue() .. "," .. save_bonus_type.getValue()
    elseif save.getStringValue() ~= "" then
        effectString = effectString .. " " .. save.getStringValue()
    elseif not save_bonus_type.isEmpty() then
        effectString = effectString .. " " .. save_bonus_type.getValue()
    end
    return effectString
end
