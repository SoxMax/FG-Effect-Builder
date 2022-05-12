function onDrop(x, y, dragdata)
    local effect = EffectManager.decodeEffectFromDrag(dragdata)
    if effect then
        setValue(effect.sName)
        return true
    end
end
