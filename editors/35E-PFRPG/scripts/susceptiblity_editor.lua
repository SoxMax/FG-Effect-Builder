function createEffectString()
    local effectString = susceptiblity_type.getStringValue() .. ": " .. susceptiblity.getValue()
    if susceptiblity_modifier.getValue() ~= 0 then
        effectString = effectString .. " " .. susceptiblity_modifier.getValue()
    end
    parentcontrol.window.updateEffectString(effectString)
end
