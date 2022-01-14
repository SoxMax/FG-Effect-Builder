function createEffectString()
    local effectString = effect.getStringValue() .. ": " .. effect_modifier.getValue()
    if not effect_bonus_type.isEmpty() then
        effectString = effectString .. " " .. effect_bonus_type.getValue()
    end
    -- parentcontrol.window.effectDescription.setValue(effectString)
    return effectString
end
