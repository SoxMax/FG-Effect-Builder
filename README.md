# FG-Effect-Builder
Extension for Fantasy Grounds which assists in creating effects

To access the Effect Builder type `/buildeffect` or `/effectbuilder` into the chat box.
After your effect string is fully constructed you may copy & paste or drag & drop the string wherever you need it.

By default this extension does nothing, and requires plugins to proved Effect Editors.

## Adding Effect Editors to the Builder
An effect Editor consists of three parts:
1. Category
2. Effect
3. Editor

![image](https://user-images.githubusercontent.com/1742020/150987967-93ea6585-8325-4a1c-86b3-76c218f75dec.png)

All 3 components must be specified to the `EditorManager.addEditor(category, editor)` function.
Parameters:
* `category` - a string representing a string resource to use, displayed to the user in the Category UI selector.
* `editor` - a table representing the Effect Editor.
  * `value` - a string representing the actual value of the effect, this is often the Effect string itself (ie. ATK, AC, SAVE, DMG).
  * `windowclass` - a string corrisponding to a defined windowclass containing all elements needed to construct this effect.
  * (optional) `labelres` - a string representing a string resource to use, displayed to the user in the Effect UI selector. If not provided, the value will be used for this field. 
  * (optional) `label` - a string displayed in the Effect selector to the user. It is reccomended to use the labelres instead to make translations easier.

Effect Editors are uniquely identified by their Category-Value pairs. Adding an Effect Editor that shares an already existing Category-Value pair will override the existing one.

### Creating an Editor Windowclass
An Effect Editor windowclass is a window like any other, although it is designed to fit in the space of a row. Within the window are all the UI components needed to construct an effect string of that Effect type. So using ATK from 3.5/PFRPG it can have dice & numbers as value, a bonus type, a range, and it may or may not be "opporunity". To capture all of this we need to have UI elements for all these pieces. You can see this in the actual windowclas for ATK here: https://github.com/SoxMax/FG-Effect-Builder-Plugin-35E-PFRPG/blob/main/editors/effect/ATK.xml
The Effect Builder provides many templates to make building Editor UIs easier by default. Check the common directory of this repo for UI templates you can use. In fact the ATK example above makes use of many of those elements.

After building the UI for the Effect Editor it needs to know how to use all these UI elements to build the actual string for the effect. A script MUST be provided to the windowclass declaring `function createEffectString()`. This function must return a string, and the string is expected to be a fully build Effect of the type the window is attempting to build. Following on with our ATK example above, here is the lua for the ATK editor: https://github.com/SoxMax/FG-Effect-Builder-Plugin-35E-PFRPG/blob/main/editors/effect/scripts/ATK.lua

### Notes on Implementation
While its not required that you load your new Effect Editors in the same file that you declare their windowclass I find it helps organization if you do.
Try and make your windowclasses, templates, and loader scripts have as unique a name as possible as they all use the same global namespace every other extension does. While your effect may load and function in isolation a conflict with another extension could turn your work into a pile of errors.

### Addtional Examples
* https://github.com/SoxMax/FG-Effect-Builder-Plugin-35E-PFRPG/blob/main/editors/effect/ABILITY.xml
* https://github.com/SoxMax/FG-Effect-Builder-Plugin-5E/blob/main/editors/effect/DMG.xml
* https://github.com/SoxMax/FG-Effect-Builder-Plugin-5E/blob/main/editors/effect/VULN.xml
* https://github.com/SoxMax/FG-Effect-Builder-Plugin-35E-PFRPG/blob/main/editors/conditional/conditional_SIZE.xml
* https://github.com/Kelrugem/Extended-automation-and-overlays/tree/main/effect_builder
