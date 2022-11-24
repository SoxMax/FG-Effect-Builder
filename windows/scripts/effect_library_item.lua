-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onDragStart(button, x, y, dragdata)
    dragdata.disableHotkeying(true)
    dragdata.setType("effect_editor")
    dragdata.setIcon("action_effect")
    dragdata.setMetaData("category", raw_category)
    dragdata.setCustomData(effect_editor)
    return true
end

function addEffectBuilder()
    local effect_builder = Interface.findWindow("effect_builder", "")
    if effect_builder then
        effect_builder.addEffectBuilder(raw_category, effect_editor.value)
    end
end
