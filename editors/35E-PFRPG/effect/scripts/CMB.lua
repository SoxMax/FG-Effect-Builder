function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue())
    local descriptors = {}
    if not effect_bonus_type.isEmpty() then
        table.insert(descriptors, effect_bonus_type.getValue())
    end
    if effect_opportunity.getValue() > 0 then
        table.insert(descriptors, "opportunity")
    end

    if next(descriptors) then
        effectString = effectString .. " " .. table.concat(descriptors, ",")
    end

    return effectString
end