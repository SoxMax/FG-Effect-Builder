local index = 0
local emptyField = nil
local fields = {}
local fieldWidth = 100

local function createField()
    index = index + 1
    local newField = createControl("subwindow_eb_damage_types_combobox", "damage_type_" .. index)
    fields[newField] = true
    return newField
end

local function getFieldWidth(field)
    return field.getSize() + field.anchored[1].left[1].offset[1]
end

function onInit()
    emptyField = createField()
    fieldWidth = getFieldWidth(emptyField)
end

function damageFieldUpdated(updatedField)
    if updatedField == emptyField then
        if not updatedField.isEmpty() then
            emptyField = createField()
            local width = getSize()
            parentcontrol.setAnchoredWidth(width + fieldWidth)
        end
    else
        if updatedField.isEmpty() then
            emptyField.destroy()
            fields[emptyField] = nil
            emptyField = updatedField
            local width = getSize()
            parentcontrol.setAnchoredWidth(width - fieldWidth)
        end
    end
    getFieldWidth(emptyField)
end

function getStringValue()
    local fieldList = {}
    for field in pairs(fields) do
        if not field.isEmpty() then
            table.insert(fieldList, field.getValue())
        end
    end
    return table.concat(fieldList, ",")
end
