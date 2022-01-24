function getStringValue()
    -- Debug.chat("Dice calculation", StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue()))
    return StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue())
end
