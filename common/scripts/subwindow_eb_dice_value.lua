function getStringValue()
    local dice = effect_dice and effect_dice.getDice()
    return DiceManager.convertDiceToString(dice, effect_modifier.getValue())
end
