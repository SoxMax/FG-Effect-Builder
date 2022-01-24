function onValueChanged()
    if super and super.onValueChanged then
        super.onValueChanged()
    end
    window.parentcontrol.updateEffectString()
end
