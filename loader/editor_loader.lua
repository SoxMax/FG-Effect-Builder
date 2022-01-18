editorBundles = {
    {
        labelres ="editor_ability",
        value = "editor_ability"
    },
    {
        labelres ="editor_attacks",
        value = "editor_attacks"
    },
    {
        labelres ="editor_defense",
        value = "editor_defense"
    },
    {
        labelres ="editor_susceptibility",
        value = "editor_susceptibility"
    },
    {
        labelres ="editor_heal",
        value = "editor_heal"
    },
    {
        labelres ="editor_spell",
        value = "editor_spell"
    },
    {
        labelres ="editor_ability",
        value = "editor_ability"
    },
    {
        labelres ="editor_misc",
        value = "editor_misc"
    },
    {
        labelres ="editor_conditional",
        value = "editor_conditional"
    }
}

function convertListToCyclerParams(editorList)
    local defaultlabel = ""
    local defaultvalue = ""
    local labels = {}
    local values = {}
    for index,entry in ipairs(editorList) do
        if index == 1 then
            if entry.labelres then
                defaultlabel = Interface.getString(entry.labelres)
            else
                defaultlabel = entry.label
            end
            defaultvalue = entry.value
        else
            if entry.labelres then
                table.insert(labels, Interface.getString(entry.labelres))
            else
                table.insert(labels, entry.label)
            end
            table.insert(values, entry.value)
        end
    end
    return defaultlabel, defaultvalue, table.concat(labels, "|"), table.concat(values, "|")
end
