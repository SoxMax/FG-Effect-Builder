function createEffectString()
    local effectString = ability.getStringValue() .. ": " .. ability_modifier.getValue()
    if not ability_bonus_type.isEmpty() then
        effectString = effectString .. " " .. ability_bonus_type.getValue()
    end
    -- parentcontrol.window.effectDescription.setValue(effectString)
    return effectString
end
