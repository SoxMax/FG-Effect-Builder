-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onFilterValueChanged()
    list.applyFilter()
    list.createWindow().close()
end
