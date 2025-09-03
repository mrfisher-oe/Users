# Template for Orbis Education React Applications

This repository contains the React Application Template 2023 developed in React using React Hooks.


# .env

When installing, copy and rename the .env.sample file to .env. That file contains all the variables that can be used while developing the application locally. Any variable that starts with "VITE_" will be copied to the production React build and available/used in the application. There are some variables that aren't commented out in this file that are needed in the application for the React application to function properly.


# Administering 

Go to https://portal.azure.com with your Orbis Education account.

Select App registrations > All applications > intranet and the apps will show in the list:
https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade

Authentication menu item to update URIs.


# Components

## FormInput
This is a text input to be used in forms. Can be changed to other types of inputs (text, password, number, etc.) or a textarea.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| formInputID | string | pattern is to name it the same as the state used for inputValue |
| inputType | string | text, textarea, password, number, etc. "text" is the default value. |
| labelText | string | |
| isRequired | boolean | if true, displays red * next to label text |
| inlineError | string | inlineErrors.txtState - shows inline error message, logic for errors should be set in parent component |
| placeholderText | string |  |
| inputHint | string | displays hint text in a `<p>` below the label and above the input |
| srOnly | boolean | if true, label is only visible to screen readers |
| inputDisabled | boolean | |
| useInputAddon | boolean | displays label in a gray box, inline with the input and to the left |
| datalistName | array | name to link to a datalist. Actual datalist needs to be set outside of the component |
| textareaRows | number | if inputType is textarea, sets height of the textarea in rows |
| inputMin | number | used for number inputs |
| inputMax | number | used for number inputs |
| inputStep | number | used for number inputs |
| inputValue | string or number | state used for value of input  |
| updateValue | function | setState function to update value of input |

Example: <br>
```
<FormInput 
  formInputID="txtUsername" 
  labelText="Username"
  isRequired={true} 
  inlineError={inlineErrors.txtUsername} 
  inputValue={txtUsername} 
  updateValue={setTxtUsername} />

<FormInput 
  formInputID="txtPassword" 
  inputType="password" 
  labelText="Password"
  isRequired={true} 
  inlineError={inlineErrors.txtPassword} 
  inputHint="Your password must be at least eight characters and must contain at least one number, one uppercase letter, one lowercase letter, and one special character." 
  inputValue={txtPassword} 
  updateValue={setTxtPassword} />
```

Output: <br>
<img width="679" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/c6109b97-f8b5-47c3-80af-c20c49a1a518">


## FormDropdown
This is a "select" form element.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| formInputID | string | pattern is to name it the same as the state used for inputValue |
| labelText | string | |
| inputHint | string | displays hint text in a `<p>` below the label and above the input |
| isRequired | boolean | if true, displays red * next to label text |
| srOnly | boolean | if true, label is only visible to screen readers |
| inputDisabled | boolean | |
| inlineError | string | inlineErrors.txtState - shows inline error message, logic for errors should be set in parent component |
| placeholderText | string | used for emptyOption |
| emptyOption | boolean | if true, adds an option with no value: `<option value="">{placeholderText}</option>` |
| optionData | array | array of objects to loop through |
| optionID | string | the name of the id property in the optionData, used for the option key and value. In a loop, it would be `optionData[i][optionID]` |
| optionText | array of objects | optionText is an array of objects, which gets mapped through to display the text of each option. For type of "property", it uses the optionData array again. In a loop, it would be `optionData[i][optionText[j][text]]`. The below example is equivalent to: `optionData.simulationName + " (" + optionData.simulationTypeName + ")"`. |
| | | Example: `optionText={[{ type: "property", text: "simulationName" }, { type: "string", text: " (" }, { type: "property", text: "simulationTypeName" }, { type: "string", text: ")" }]}` |
| inputValue | string | state used for value of input  |
| updateValue | function | setState function to update value of input |

Example: <br>
```
<FormDropdown
  formInputID=""
  labelText=""
  srOnly=""
  inputHint=""
  isRequired={boolean}
  inputDisabled={boolean}
  useInputAddon={boolean}
  inlineError={inlineErrors.ddState}
  placeholderText="" 
  emptyOption={boolean} 
  optionData={array} 
  optionID="string" 
  optionText={[
    { type: "property", text: "simulationName" }, 
    { type: "string", text: " (" }, 
    { type: "property", text: "simulationTypeName" }, 
    { type: "string", text: ")" }
  ]}
/>
```

Output: <br>
<img width="549" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/6bbccdb6-49f2-4682-934a-6541bf9d3fa2">


## FormRadioGroup and CheckboxGroup
Display a group of radio buttons or checkboxes. Both components have the same exact props, and both follow similiar patterns used in FormDropdown.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| formInputID | string | pattern is to name it the same as the state used for inputValue |
| legendText | string | Text to be displayed in `<legend>` tag |
| srOnly | boolean | if true, label is only visible to screen readers |
| isRequired | boolean | if true, displays red * next to label text |
| inputDisabled | boolean | |
| inlineError | string | inlineErrors.txtState - shows inline error message, logic for errors should be set in parent component |
| formColumns | string | How many columns should be displayed, is 1 by default |
| isCollapsible | boolean | Whether the group can be collpased or not |
| startCollapsed | boolean | If group can be collapsed, then whether it should start that way or not. Is true by default. |
| optionData | array | array of objects to loop through |
| optionID | string | the name of the id property in the optionData, used for the option key and value. In a loop, it would be `optionData[i][optionID]` |
| optionText | array of objects | optionText is an array of objects, which gets mapped through to display the text of each option. For type of "property", it uses the optionData array again. In a loop, it would be `optionData[i][optionText[j][text]]`. The below example is equivalent to: `optionData.simulationName + " (" + optionData.simulationTypeName + ")"`. |
| | | Example: `optionText={[{ type: "property", text: "simulationName" }, { type: "string", text: " (" }, { type: "property", text: "simulationTypeName" }, { type: "string", text: ")" }]}` |
| inputValue | string or number | state used for value of input |
| updateValue | function | setState function to update value of input |

Example: <br>
```
<CheckboxGroup 
  formInputID="cbxUserPermissions" 
  legendText="User Permissions" 
  isRequired={true} 
  optionData={[
    { userPermissionID: 1, userPermission: "Read" }, 
    { userPermissionID: 2, userPermission: "Write" }
  ]} 
  optionID="userPermissionID" 
  optionText={[{ type: "property", text: "userPermission" }]} 
  inlineError={inlineErrors.cbxUserPermissions} 
  inputValue={cbxUserPermissions} 
  updateValue={setCbxUserPermissions} 
/>

<FormRadioGroup 
  formInputID="rdoActive" 
  legendText="Active" 
  isRequired={true} 
  optionData={[
    { optionID: 1, optionText: "Yes" }, 
    { optionID: 2, optionText: "No" }
  ]} 
  optionID="optionID" 
  optionText={[{ type: "property", text: "optionText" }]} 
  inlineError={inlineErrors.rdoActive} 
  inputValue={rdoActive} 
  updateValue={setRdoActive}
/>
```

Output: <br>
<img width="235" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/3eb112ab-bb3a-4b5a-a606-10b79bbfe5b4">


## ToggleSwitch
Displays a toggle switch. This uses radio inputs behind the scenes so that it can function properly inside a form.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| formInputID | string | pattern is to name it the same as the state used for inputValue |
| labelText | string | |
| isRequired | boolean | if true, displays red * next to label text |
| inputHint | string | displays hint text in a `<p>` below the label and above the input |
| srOnly | boolean | if true, label is only visible to screen readers |
| inputDisabled | boolean | |
| trueValue | string | Display text for when inputValue is true. Default value is "Yes" |
| falseValue | string | Display text for when inputValue is false. Default value is "No" |
| inputValue | string | state used for value of input |
| updateValue | function | setState function to update value of input |

Output: <br>
<img width="171" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/776ee52e-3d4d-49a6-b1a3-7605449d5566">
<img width="164" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/dc247a3e-1b59-4b42-9a64-58a214e5b83d">

## AlertPopup
Is best used with Messages parent component, as seen in the LearningObjectRepository.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| alertType | string | Determines colors and icons. Should be "success", "warning", "info", or "error". |
| message | string | The text that gets displayed in the alert popup. The string gets parsed, so it can include HTML tags, such as `<strong>` |
| includesResetButton | boolean | Determines if "Refresh" button appears, which refreshes the page. |
| setMessage | function | sets the message state, basically is used to clear the state when closing the popup |

## DialogBox
A dialog box for displaying information. Can't perform any other actions, only has a Close button.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| dialogBoxOpen | boolean | Show or hide dialog box |
| dialogBoxSize | string | size must be "sm", "md", "lg", or "xl" |
| dialogBoxTitle | string | Title that appears in dialog box header |
| dialogBoxContent | string | Content that appears in body |
| setDialogBoxOpen | function | Updates dialogBoxOpen state |

## DialogBoxConfirmation
A dialog box that allows the user to confirm something. Has "OK" and "Close" buttons. This component should be paired with the useDialogBoxConfirmation hook, located in the utilities directory.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| dialogBoxOpen | boolean | Show or hide dialog box |
| dialogBoxType | string | If this string is used, then it sets a predetermined size, title, and content that overrides the corresponding strings below. Check DialogBoxConfirmation.js file for possible values. |
| dialogBoxSize | string | size must be "sm", "md", "lg", or "xl" |
| dialogBoxTitle | string | Title that appears in dialog box header |
| dialogBoxContent | string | Content that appears in body |
| setDialogBoxContinue | function | Updates dialogBoxContinue state (boolean). "OK" sets it to true, "Close" sets it to false.  |

## SortableColumnHeader
For table column headers with a sort button. Place the component inside `<th></th>`.
| Prop Name | Type | Description |
| :-------: | :--: | ----------- |
| columnText | string | The text that displays inside the `<th>` |
| columnPropertyName | string | The name of the property that will be used for sorting. |
| sortDirection | string | state variable from parent component |
| sortProperty | string | state variable from parent component |
| setSortDirection | function | setState function from parent component |
| setSortProperty | function | setState function from parent component |

Example: <br>
```
<th>
  <SortableColumnHeader 
    columnText="Start Date" 
    columnPropertyName="startDate" 
    sortDirection={sortDirection} 
    sortProperty={sortProperty} 
    setSortDirection={setSortDirection} 
    setSortProperty={setSortProperty} />
</th>
```

## Header
Displays header with Orbis logo and the application's name.

## Spinner
Displays spinning loading gif.

# CSS

## flex utility classes (.flex-row)
Add flex-row to an element to set `display: flex` and `flex-direction: row`. Then you can add other classes to adjust the `justify-content` and `align-items` properties. The default for both is `flex-start`.

.justify-end -- `justify-content: flex-end`
.justify-center -- `justify-content: center`
.space-between -- `justify-content: space-between`

.align-end -- `align-items: flex-end`
.align-center -- `align-items: center`

### Visual examples of how flex works:
`<div class="flex-row justify-end">`

<img width="278" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/6b0832af-27a2-4d57-874e-b67c3cf1a8f4">

`<div class="flex-row justify-center">`

<img width="269" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/427f063a-c73e-4193-a199-2d210eda4176">

`<div class="flex-row space-between">`

<img width="274" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/d09ccf80-3eb8-4f60-8222-82a7e94b41b6">

`<div class="flex-row align-end">`

<img width="282" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/a92c8262-c9df-4d96-8079-1d5735c904de">

`<div class="flex-row align-center">`

<img width="273" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/d43296db-4519-45ce-9e1e-2411dbff69f0">

`<div class="flex-row justify-center align-center">`

<img width="274" alt="" src="https://github.com/orbis-education/template_ReactApplication2023/assets/70538368/125164e0-1731-4115-a37d-dfe1dc47e298">

## .ul-no-bullets
styles an unordered list that doesn't bullet points in front of the list-items.

## margin utilities
The margin utility classes are copied from bootstrap. The class names follow a pattern. 

If you want to affect the margin on all sides of the element, you would use .m-[number]. If you want to affect a specific margin you would abbreviate the css property name. So margin-left is .ml-[number], margin-bottom is .mb-[number], etc. 

The number used in the last half of the class name calculates the margin based off a "spacer" variable. The $spacer variable is in Variables.css. Below are the numbers used and their calculations:
--spacer: 1rem;
0: 0,
1: $spacer * .25,
2: $spacer * .5,
3: $spacer,
4: $spacer * 1.5,
5: $spacer * 3

So an example of a class name would be mb-3, which would set `margin-bottom: 1rem`

### .sr-only
For screen reader only text. Visually hides the text, but still makes it available for screen readers to read.

### .hide-element
sets `display: none`. This removes the element from the layout, so it does not take up any space.

### .no-visibility
sets `visibility: hidden`. This hides the element, but does not remove it from the layout, so it still takes up space within the layout.

### .[color]-text
red: #cc3645, rgba(204, 54, 68, 1)
yellow: #cc3645, rgba(255, 165, 8, 1)
green: #cc3645, rgba(4, 147, 114, 1)

### .text-[alignment]
center, left, right

### .width-100
sets width to 100%

### .pointer-cursor
sets cursor to pointer

