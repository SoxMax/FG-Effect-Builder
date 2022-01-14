function createEffectString()
    local effectString = combat.getStringValue() .. ": " .. combat_modifier.getValue()
    if not combat_bonus_type.isEmpty() then
        effectString = effectString .. " " .. combat_bonus_type.getValue()
    end
    return effectString
end
