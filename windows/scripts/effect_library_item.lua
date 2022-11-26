-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

local editor = nil

function setEditor(effectEditor)
    editor = effectEditor
    name.setValue(editor.label)
end

function onDragStart(button, x, y, dragdata)
    dragdata.disableHotkeying(true)
    dragdata.setType("effect_editor")
    dragdata.setIcon("action_effect")
    dragdata.setCustomData(editor)
    return true
end

function addEffectBuilder()
    local effectBuilder = Interface.findWindow("effect_builder", "")
    if effectBuilder then
        effectBuilder.addEffectBuilder(editor)
    end
end
