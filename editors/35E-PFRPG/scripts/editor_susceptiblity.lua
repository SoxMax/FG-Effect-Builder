function onInit()
    updateVisibility()
end

function updateVisibility()
    local effect = susceptiblity_type.getStringValue()
    susceptiblity_modifier.setVisible(effect == "RESIST" or effect == "DR")
end

function createEffectString()
    local effectParts = { susceptiblity_type.getStringValue() .. ":" }
    if susceptiblity_modifier.isVisible() and susceptiblity_modifier.getValue() ~= 0 then
        table.insert(effectParts, susceptiblity_modifier.getValue())
    end
    table.insert(effectParts, susceptiblity.getValue())
    return table.concat(effectParts, " ")
end
