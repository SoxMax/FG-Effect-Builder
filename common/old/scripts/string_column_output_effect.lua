function onDragStart(button, x, y, draginfo)
    if isEmpty() then
        return nil;
    end

    draginfo.setType("string")
    draginfo.setDescription(getValue())
    draginfo.setStringData(getValue())

    return true
end