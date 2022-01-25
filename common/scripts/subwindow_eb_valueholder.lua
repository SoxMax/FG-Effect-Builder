function getStringValue()
    return subwindow.getStringValue()
end

function updateEffectString()
    window.parentcontrol.updateEffectString()
end

function onInstanceCreated()
    setWidth()
end

function setWidth()
    local width = subwindow.getSize()
    setAnchoredWidth(width)
end
