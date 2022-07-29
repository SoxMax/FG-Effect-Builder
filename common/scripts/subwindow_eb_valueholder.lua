function getStringValue()
    if subwindow then
        return subwindow.getStringValue()
    end
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
