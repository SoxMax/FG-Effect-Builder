function updateEffectString()
    local effectItems = {}
    if(not effect_name.isEmpty()) then
        table.insert(effectItems, effect_name.getValue())
    end
    for _, effectWindow in ipairs(effects_list.getWindows()) do
        if(not effectWindow.effect_description.isEmpty()) then
            table.insert(effectItems, effectWindow.effect_description.getValue())
        end
    end
    output_effect.setValue(table.concat(effectItems, "; "))
end

function onDrop(x, y, dragdata)
    if dragdata.getType() == "effect_editor" then
        addEffectBuilder(dragdata.getCustomData())
        return true
    end
end

function addEffectBuilder(effect)
    local window = effects_list.addEntry(true)
    window.updateEffect(effect)
end
