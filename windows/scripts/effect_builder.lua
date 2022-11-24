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
    local window = effects_list.addEntry(true)
    window.effect_category.setListValue(dragdata.getMetaData("category"))
    window.effect.setListValue(dragdata.getCustomData().value)
end
