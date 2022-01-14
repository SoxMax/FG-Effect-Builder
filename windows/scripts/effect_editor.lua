function delete()
    close()
end

function updateEffectType()
    effect_type_editor.setValue(effect_type.getStringValue())
end

function updateEffectString(effectString)
    effect_description.setValue(effectString)
end
