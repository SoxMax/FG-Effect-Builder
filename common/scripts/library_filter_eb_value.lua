-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

local m_sType = nil;

function onInit()
	super.onInit();
	updateDisplay();
end

function setFilterType(sType)
	m_sType = sType;
end

function updateDisplay()
	if getValue() == "" then
		setFrame("filter", 5,5,5,5);
	else
		setFrame("filter_active", 5,5,5,5);
	end
end

function onValueChanged()
	updateDisplay()
	window.onFilterValueChanged()
end
