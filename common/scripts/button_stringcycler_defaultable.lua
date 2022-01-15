local startValue = ""

function onInit()
    super.onInit()
    if parameters then
        if parameters[1].defaultvalue then
            startValue = parameters[1].defaultvalue[1]
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
