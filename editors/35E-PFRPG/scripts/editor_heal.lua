function createEffectString()
    local effectString = heal.getStringValue() .. ": " .. heal_modifier.getValue()
    if not heal_bonus_type.isEmpty() then
        effectString = effectString .. " " .. heal_bonus_type.getValue()
    end
    return effectString
end
