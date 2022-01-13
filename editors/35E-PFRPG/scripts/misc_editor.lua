function createEffectString()
    local effectString = misc.getStringValue() .. ": " .. misc_modifier.getValue()
    if not misc_bonus_type.isEmpty() then
        effectString = effectString .. " " .. misc_bonus_type.getValue()
    end
    parentcontrol.window.updateEffectString(effectString)
end
