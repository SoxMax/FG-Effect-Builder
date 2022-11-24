-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onHover(bHover)
	setUnderline(bHover, -1);
end

function onClickDown(button, x, y)
	return true;
end

function onDragStart(button, x, y, dragdata)
    dragdata.disableHotkeying(true)
    dragdata.setType("effect_editor")
    dragdata.setIcon("action_effect")
    dragdata.setCustomData(window.effect_editor)
    return true
end
