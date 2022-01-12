local function setAbilityControlsVisible(isVisible)
    ability.setVisible(isVisible)
    ability_modifier.setVisible(isVisible)
    ability_bonus_type.setComboBoxVisible(isVisible)
end

local function setSaveControlsVisible(isVisible)
    save.setVisible(isVisible)
    save_modifier.setVisible(isVisible)
    save_bonus_type.setComboBoxVisible(isVisible)
end

local function setSusceptiblityControlsVisible(isVisible)
    susceptiblity.setComboBoxVisible(isVisible)
    susceptiblity_modifier.setVisible(isVisible)
    susceptiblity_type.setVisible(isVisible)
end

local function setMiscControlsVisible(isVisible)
    misc.setVisible(isVisible)
    misc_modifier.setVisible(isVisible)
    misc_bonus_type.setComboBoxVisible(isVisible)
end

function updateVisibility()
    local currentEffectType = effect_type.getStringValue()
    setAbilityControlsVisible(currentEffectType == "ability")
    setSaveControlsVisible(currentEffectType == "save")
    setSusceptiblityControlsVisible(currentEffectType == "susceptiblity")
    setMiscControlsVisible(currentEffectType == "misc")
end


function onFirstLayout()
    updateVisibility()
end

local function updateAbilityEffectString()
    local effectString = ability.getStringValue() .. ": " .. ability_modifier.getValue()
    if not ability_bonus_type.isEmpty() then
        effectString = effectString .. " " .. ability_bonus_type.getValue()
    end
    parentcontrol.window.effectDescription.setValue(effectString)
end

local function updateSaveEffectString()
    local effectString = "SAVE: " .. save_modifier.getValue()
    if save.getStringValue() ~= "" and not save_bonus_type.isEmpty() then
        effectString = effectString .. " " .. save.getStringValue() .. "," .. save_bonus_type.getValue()
    elseif save.getStringValue() ~= "" then
        effectString = effectString .. " " .. save.getStringValue()
    elseif not save_bonus_type.isEmpty() then
        effectString = effectString .. " " .. save_bonus_type.getValue()
    end
    parentcontrol.window.effectDescription.setValue(effectString)
end

local function updateSusceptiblityEffectString()
    local effectString = susceptiblity_type.getStringValue() .. ": " .. susceptiblity.getValue()
    if susceptiblity_modifier.getValue() ~= 0 then
        effectString = effectString .. " " .. susceptiblity_modifier.getValue()
    end
    parentcontrol.window.effectDescription.setValue(effectString)
end

local function updateMiscEffectString()
    local effectString = misc.getStringValue() .. ": " .. misc_modifier.getValue()
    if not misc_bonus_type.isEmpty() then
        effectString = effectString .. " " .. misc_bonus_type.getValue()
    end
    parentcontrol.window.effectDescription.setValue(effectString)
end

local effectUpdateFunctions = {
    ability=updateAbilityEffectString,
    save=updateSaveEffectString,
    susceptiblity=updateSusceptiblityEffectString,
    misc=updateMiscEffectString
}

function updateEffectString()
    -- Debug.chat(getValue())
    -- Debug.chat(window)
    -- Debug.chat(window.parentcontrol)
    -- Debug.chat(window.parentcontrol.window)
    -- Debug.chat(window.parentcontrol.window.effectDescription)

    local currentEffectType = effect_type.getStringValue()
    effectUpdateFunctions[currentEffectType]()
end