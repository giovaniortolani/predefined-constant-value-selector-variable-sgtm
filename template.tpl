___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Predefined Constant Value Selector",
  "description": "Returns a predefined value (null, undefined, true, false, empty string, empty object or empty array). Useful for client or tag fields, and for trigger conditions.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "returnValue",
    "displayName": "Value to be returned",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "value_null",
        "displayValue": "null"
      },
      {
        "value": "value_undefined",
        "displayValue": "undefined"
      },
      {
        "value": "value_true",
        "displayValue": "true"
      },
      {
        "value": "value_false",
        "displayValue": "false"
      },
      {
        "value": "emptyString",
        "displayValue": "Empty string (\"\")"
      },
      {
        "value": "emptyArray",
        "displayValue": "Empty array ([])"
      },
      {
        "value": "emptyObject",
        "displayValue": "Empty Object ({})"
      }
    ],
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

const returnValue = data.returnValue;
const outputs = {
  'value_null': null,
  'value_undefined': undefined,
  'value_true': true,
  'value_false': false,
  'emptyString': '',
  'emptyArray': [],
  'emptyObject': {}
};

return outputs[returnValue];


___TESTS___

scenarios:
- name: 'null'
  code: |-
    mockData.returnValue = 'value_null';

    let variableResult = runCode(mockData);

    assertThat(variableResult).isNull();
- name: undefined
  code: |-
    mockData.returnValue = 'value_undefinedd';

    let variableResult = runCode(mockData);

    assertThat(variableResult).isUndefined();
- name: 'true'
  code: |-
    mockData.returnValue = 'value_true';

    let variableResult = runCode(mockData);

    assertThat(variableResult).isTrue();
- name: 'false'
  code: |-
    mockData.returnValue = 'value_false';

    let variableResult = runCode(mockData);

    assertThat(variableResult).isFalse();
- name: empty string
  code: |-
    mockData.returnValue = 'emptyString';

    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo('');
- name: empty array
  code: |-
    mockData.returnValue = 'emptyArray';

    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo([]);
- name: empty object
  code: |-
    mockData.returnValue = 'emptyObject';

    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo({});
setup: const mockData = {};


___NOTES___

Created on 3/1/2025, 12:35:20 PM


