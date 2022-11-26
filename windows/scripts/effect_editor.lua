local editorDefinition = nil

function onInit()
    if super and super.onInit() then
        super.onInit()
    end

    -- Register the deletion menu item for the host
	registerMenuItem(Interface.getString("list_menu_deleteitem"), "delete", 6);
	registerMenuItem(Interface.getString("list_menu_deleteconfirm"), "delete", 6, 7);
end

function updateEffect(editor)
    editorDefinition = editor
    effect.setValue(editorDefinition.label)
    effect_editor.setValue(editorDefinition.windowclass)
end

function getEffectValue()
    if editorDefinition  then
        return editorDefinition.value
    end
    return nil
end

function onMenuSelection(selection, subselection)
	if selection == 6 and subselection == 7 then
		self.delete()
	end
end

function delete()
    close()
end
