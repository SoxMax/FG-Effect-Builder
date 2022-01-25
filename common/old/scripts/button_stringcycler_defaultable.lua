local startValue = ""

function onInit()
    super.onInit()
    if parameters then
        if parameters[1].defaultvalue then
            startValue = parameters[1].defaultvalue[1]
        end
        if parameters[1].dynamicinitlist then
            local defaultlabel, defaultvalue, labels, values = EditorLoader.getCategoryEffectsAsCyclerParams(parameters[1].dynamicinitlist[1])
            initialize(labels, values, defaultlabel, nil, defaultvalue)
	        updateDisplay()
        end
    end
end

function initialize(sLabels, sValues, sDefaultLabel, sInitialValue, sDefaultValue)
    super.initialize(sLabels, sValues, sDefaultLabel, sInitialValue)
    startValue = (sDefaultValue or "")
end

function initialize2(sLabels, sValues, sDefaultLabel, sInitialValue, sDefaultValue)
    super.initialize2(sLabels, sValues, sDefaultLabel, sInitialValue)
    startValue = (sDefaultValue or "")
end

function getStringValue()
    local value = super.getStringValue()
    if value == "" then
        return startValue
    end
	return value;
end
