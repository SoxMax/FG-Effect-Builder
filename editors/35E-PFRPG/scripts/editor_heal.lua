function createEffectString()
    return effect.getStringValue() .. ": " .. StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue())
end
