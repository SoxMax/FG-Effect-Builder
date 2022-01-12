
function onValueChanged()
    -- Debug.chat(getValue())
    -- Debug.chat(window)
    -- Debug.chat(window.parentcontrol)
    -- Debug.chat(window.parentcontrol.window)
    -- Debug.chat(window.parentcontrol.window.effectDescription)

    local effectString = window.ability.getStringValue() .. ": " .. window.ability_modifier.getValue()
    if not window.ability_bonus_type.isEmpty() then
        effectString = effectString .. " " .. window.ability_bonus_type.getValue()
    end
    window.parentcontrol.window.effectDescription.setValue(effectString)
end