function onInit()
    window.updateEffectEditor()
end

function updateEffectString(effectString)
    if window.parentcontrol then
        window.parentcontrol.updateEffectString(effectString)
    else
        window.updateEffectString(effectString)
    end
end
