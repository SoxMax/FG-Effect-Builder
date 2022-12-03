-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

local editor = {}

function setEditor(effectEditor)
    editor = effectEditor
    name.setValue(editor.label)
    category.setValue(editor.category)
end

function getEditor()
    return editor
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
