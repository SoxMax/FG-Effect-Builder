function createEffectString()
    local effectString = "LIGHT: " .. bright_range.getValue()
    if light_type.isEmpty() then
        effectString = effectString .. " " .. color.getValue()
        if not light_fx.isEmpty() then
            effectString = effectString .. " " .. light_fx.getValue() .. " " .. frequency.getValue()
        end
    else
        effectString = effectString .. " " .. light_type.getValue()
    end
    return effectString
end

function updateVisibility()
    local isCustomLight = light_type.isEmpty()
    local hasFx = not light_fx.isEmpty()

    color.setVisible(isCustomLight)
    light_fx.setComboBoxVisible(isCustomLight)
    frequency.setVisible(isCustomLight and hasFx)
end

function onInit()
    if super and super.onInit then
        super.onInit()
    end
    updateVisibility()
end
