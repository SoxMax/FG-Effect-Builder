function onInit()
    updateVisibility()
end

function updateVisibility()
    local effect = effect.getStringValue()
    effect_modifier.setVisible(effect == "RESIST" or effect == "DR")
end

function createEffectString()
    local effectParts = { effect.getStringValue() .. ":" }
    if effect_modifier.isVisible() and effect_modifier.getValue() ~= 0 then
        table.insert(effectParts, effect_modifier.getValue())
    end
    table.insert(effectParts, damage_type.getValue())
    return table.concat(effectParts, " ")
end
