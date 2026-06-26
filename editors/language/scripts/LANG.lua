function createEffectString()
    local tag = lang_mode.getStringValue()
    if tag == "" then
        tag = "LANG"
    end
    local effectString = tag
    local lang = language.getValue()
    if lang ~= "" then
        effectString = effectString .. ": " .. lang
    end
    return effectString
end
