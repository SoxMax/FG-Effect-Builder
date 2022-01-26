function getStringValue()
    local dice = effectDice and effect_dice.getDice()
    local valueString = StringManager.convertDiceToString(dice, effect_modifier.getValue())
    local stat = stat_value.getStringValue()
    if stat ~= "" then
        if valueString ~= "" then
            valueString = valueString .. " "
        end
        valueString = valueString .. "[" .. stat .."]"
    end
    return valueString
end
