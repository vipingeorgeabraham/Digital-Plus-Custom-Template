___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Digital Plus",
  "brand": {
    "id": "Flytxt",
    "displayName": "Flytxt"
  },
  "categories":  ["Analytics"],
  "description": "Digital Plus Tag Template",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "accountKey",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "displayName": "Account Key"
  },
  {
    "type": "TEXT",
    "name": "customerKey",
    "displayName": "Customer Key",
    "simpleValueType": true,
    "alwaysInSummary": true
  },
  {
    "type": "TEXT",
    "name": "tagCategory",
    "displayName": "Tag Category",
    "simpleValueType": true,
    "alwaysInSummary": true
  },
  {
    "type": "GROUP",
    "name": "additionalFieldsGroup",
    "displayName": "Additional Fields",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "additionalFields",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Field Name",
            "name": "fieldName",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Field Value",
            "name": "fieldValue",
            "type": "TEXT"
          }
        ],
        "newRowButtonText": "Add Field"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
log(data);
const encodeUriComponent=require('encodeUriComponent');
const queryPermission=require('queryPermission');
const callInWindow=require('callInWindow');
const injectScript= require('injectScript');
//const endpointUri="https://de198486.ngrok.io/tagtest";
const endpointUri="https://9bbbzm36uj.execute-api.us-east-2.amazonaws.com/test/digitalplustag";
const scriptUri='https://3ead2d09.ngrok.io/vipin/sendPostReq.js';

function onSuccess() {
  callInWindow("sendDigitalPlusData",data,endpointUri,data.gtmOnSuccess,data.gtmOnFailure);
}


if (queryPermission('inject_script', scriptUri)) {
  injectScript(scriptUri,onSuccess,data.gtmOnFailure,"digitalPlusTagScript");
} 
else {
  log(' Script load failed due to permissions mismatch.');
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://3ead2d09.ngrok.io/vipin/sendPostReq.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "sendDigitalPlusData"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 13/04/2020, 18:30:43


