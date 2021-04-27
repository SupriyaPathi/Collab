{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_s794nx",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_164f51v",
                "sourceRef": "StartEvent_1vm0clh",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_uzi3f8",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_tzwuso",
                "sourceRef": "ServiceTask_s794nx",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_veb4pr",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_24esm",
                "sourceRef": "ServiceTask_uzi3f8",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_g8ramb",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_g5qqd9",
                "sourceRef": "ServiceTask_veb4pr",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_1v74abk",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_ocrvc3",
                "sourceRef": "UserTask_g8ramb",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ExclusiveGateway_5qmrvd",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1aw85ma",
                "sourceRef": "ServiceTask_1v74abk",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1l93ao4",
                "businessProp": {"condition": "status==1\n"},
                "name": "Approve",
                "id": "SequenceFlow_b604j",
                "sourceRef": "ExclusiveGateway_5qmrvd",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_gfftqe",
                "businessProp": {"condition": "status==2"},
                "name": "Reject",
                "id": "SequenceFlow_10tf615",
                "sourceRef": "ExclusiveGateway_5qmrvd",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1q83osw",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_fo9r8r",
                "sourceRef": "UserTask_gfftqe",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_65b31t",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_er1fhr",
                "sourceRef": "UserTask_1l93ao4",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": [
            {
                "incoming": "SequenceFlow_fo9r8r",
                "businessProp": {},
                "name": "End of Process",
                "id": "EndEvent_1q83osw",
                "type": "bpmn:endEvent"
            },
            {
                "incoming": "SequenceFlow_er1fhr",
                "businessProp": {},
                "name": "End of Process",
                "id": "EndEvent_65b31t",
                "type": "bpmn:endEvent"
            }
        ],
        "serviceTask": [
            {
                "outgoing": "SequenceFlow_tzwuso",
                "incoming": "SequenceFlow_164f51v",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "GET",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimdescription\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/getEmpById\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "post-processor": "$pm.addMemVariable(\"empfirstname\", employeedetails.data.results[0].firstname);\r\n\r\n$pm.addMemVariable(\"empemail\", employeedetails.data.results[0].email);",
                    "url": "\"http://localhost:3030/rest/webservices/context/application/ExpenseData/getEmpById\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "port": "",
                    "response": "employeedetails",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"62a551af-b6cb-415a-b026-4faff86da65d\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6a1c2d06-fb57-4d47-9beb-357fd4185c69\",\"createdOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": [
                        {
                            "paramLocation": 2,
                            "type": "Query",
                            "value": "empid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "limit",
                            "allowOverride": true,
                            "advance": "limit"
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "offset",
                            "allowOverride": true,
                            "advance": "offset"
                        }
                    ]
                },
                "name": "Employee Details",
                "id": "ServiceTask_s794nx",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_24esm",
                "incoming": "SequenceFlow_tzwuso",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimdescription\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/insertClaim\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "empid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "employeedetails.data.results[0].managerid",
                            "key": "managerid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "claimamount",
                            "key": "claimamount",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "claimreason",
                            "key": "claimdescription",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "\"0\"",
                            "key": "claimstatus",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/ExpenseData/insertClaim\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "empid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "employeedetails.data.results[0].managerid",
                            "key": "managerid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "claimamount",
                            "key": "claimamount",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "claimreason",
                            "key": "claimdescription",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "type": "String",
                            "value": "\"0\"",
                            "key": "claimstatus",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "insertresp",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"62a551af-b6cb-415a-b026-4faff86da65d\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6a1c2d06-fb57-4d47-9beb-357fd4185c69\",\"createdOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimdescription\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "Insert Details",
                "id": "ServiceTask_uzi3f8",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_g5qqd9",
                "incoming": "SequenceFlow_24esm",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "GET",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimdescription\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/getEmpById\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "post-processor": "$pm.addMemVariable(\"toname\", empdetresp.data.results[0].firstname);\r\n",
                    "url": "\"http://localhost:3030/rest/webservices/context/application/ExpenseData/getEmpById\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "port": "",
                    "response": "empdetresp",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"62a551af-b6cb-415a-b026-4faff86da65d\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6a1c2d06-fb57-4d47-9beb-357fd4185c69\",\"createdOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": [
                        {
                            "paramLocation": 2,
                            "type": "Query",
                            "value": "employeedetails.data.results[0].managerid",
                            "key": "empid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "limit",
                            "allowOverride": true,
                            "advance": "limit"
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "offset",
                            "allowOverride": true,
                            "advance": "offset"
                        }
                    ]
                },
                "name": "Get Manager Details",
                "id": "ServiceTask_veb4pr",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1aw85ma",
                "incoming": "SequenceFlow_ocrvc3",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "PUT",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"getEmpById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getEmpById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getAllEmp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getAllEmp\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"insertClaim\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"empid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"managerid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimamount\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimdescription\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"String\",\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertClaim\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"getClaimById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getClaimById\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                            "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "getEmpById",
                            "getAllEmp",
                            "insertClaim",
                            "getClaimById",
                            "updateClaimStatus"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/ExpenseData/updateClaimStatus\"",
                    "parameters-body": [{
                        "paramLocation": 1,
                        "value": "status",
                        "key": "claimstatus",
                        "allowOverride": true
                    }],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/ExpenseData/updateClaimStatus\"",
                    "datasourceType": 0,
                    "proxy": "false",
                    "bodyFormData": [{
                        "paramLocation": 1,
                        "value": "status",
                        "key": "claimstatus",
                        "allowOverride": true
                    }],
                    "port": "",
                    "response": "updatestatus",
                    "data-source": "{\"name\":\"ExpenseData\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"62a551af-b6cb-415a-b026-4faff86da65d\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"6a1c2d06-fb57-4d47-9beb-357fd4185c69\",\"createdOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedOn\":\"2021-04-23T17:55:37.027+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"updateClaimStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"claimstatus\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"claimid\",\"allowOverride\":true}]},\"functionUrl\":\"/updateClaimStatus\",\"baseUrl\":\"/ExpenseData\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 1,
                        "type": "Query",
                        "value": "insertresp.data.System_Generated_Properties.claimid",
                        "key": "claimid",
                        "allowOverride": true
                    }]
                },
                "name": "Update Status",
                "id": "ServiceTask_1v74abk",
                "type": "bpmn:serviceTask",
                "events": []
            }
        ],
        "exclusiveGateway": {
            "outgoing": [
                "SequenceFlow_b604j",
                "SequenceFlow_10tf615"
            ],
            "incoming": "SequenceFlow_1aw85ma",
            "businessProp": {},
            "name": "Claim Status",
            "id": "ExclusiveGateway_5qmrvd",
            "type": "bpmn:exclusiveGateway"
        },
        "startEvent": {
            "outgoing": "SequenceFlow_164f51v",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": [
                    {
                        "ref": "empid",
                        "regex": "",
                        "type": "number",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "claimamount",
                        "regex": "",
                        "type": "number",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "claimreason",
                        "regex": "",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ]
            },
            "name": "Start Claim Process",
            "id": "StartEvent_1vm0clh",
            "type": "bpmn:startEvent"
        },
        "id": "Process_d571al",
        "userTask": [
            {
                "outgoing": "SequenceFlow_ocrvc3",
                "incoming": "SequenceFlow_g5qqd9",
                "businessProp": {
                    "formType": "Existing",
                    "fromUser": "empfirstname",
                    "form-variables": [
                        {
                            "ref": "claimamount",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "claimreason",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "status",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "empemail",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "empfirstname",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        }
                    ],
                    "form-url-type": "\"absolute\"",
                    "body-replace-strings": [],
                    "form-url": "\"http://localhost:3030/rest/projects/62a551af-b6cb-415a-b026-4faff86da65d/files/e9710ef7-a2d4-4396-acfd-7de2b5d24e70/preview\"",
                    "assignee-type": "Expression",
                    "existingForm": "{\"name\":\"ClaimD.vm\",\"type\":1,\"parentName\":\"UI Models\",\"location\":\"/ExpenseClaim/UI Models\",\"properties\":{\"isWorkspaceReady\":true,\"visualDistFolderId\":\"b8aece12-0c70-4adb-ad38-eb50d981cfa1\",\"appGen\":true},\"meta\":\"{}\",\"size\":625,\"errorMessage\":null,\"parentId\":\"a0555c57-985e-4836-886a-54a942e4622f\",\"projectId\":\"62a551af-b6cb-415a-b026-4faff86da65d\",\"referenceId\":null,\"namespaceId\":\"\",\"content\":null,\"id\":\"e9710ef7-a2d4-4396-acfd-7de2b5d24e70\",\"createdOn\":\"2021-04-23T18:01:05.711+05:30\",\"modifiedOn\":\"2021-04-23T18:13:24.688+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "{\"id\":\"e9710ef7-a2d4-4396-acfd-7de2b5d24e70\",\"projectId\":\"62a551af-b6cb-415a-b026-4faff86da65d\",\"name\":\"ClaimD.vm\",\"fileLocation\":\"/ExpenseClaim/UI Models\"}",
                    "notify-type": "With Action",
                    "assignee-exp": "toname"
                },
                "name": "Notify Manager",
                "id": "UserTask_g8ramb",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_er1fhr",
                "incoming": "SequenceFlow_b604j",
                "businessProp": {
                    "formType": "",
                    "email-body": "Hi%20User,%0D%0A%0D%0A%20%0D%0A%0D%0AYour%20expense%20claim%20with%20ID%20-%20claimid%20has%20been%20approved.%0D%0A%0D%0A%20%0D%0A%0D%0ARegards,%0D%0A%0D%0Amanager",
                    "fromUser": "\"Manager\"",
                    "form-variables": [],
                    "subject": "\"Claim Approved\"",
                    "form-url-type": "\"\"",
                    "body-replace-strings": [
                        {
                            "string": "user",
                            "value": "empfirstname"
                        },
                        {
                            "string": "manager",
                            "value": "empdetresp.data.results[0].firstname"
                        },
                        {
                            "string": "claimid",
                            "value": "insertresp.data.System_Generated_Properties.claimid"
                        }
                    ],
                    "form-url": "\"\"",
                    "assignee-type": "Expression",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "notify-type": "Message Only",
                    "assignee-exp": "empfirstname"
                },
                "name": "Notify Employee Approve",
                "id": "UserTask_1l93ao4",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_fo9r8r",
                "incoming": "SequenceFlow_10tf615",
                "businessProp": {
                    "email-type": "text/html",
                    "attribute-references": [],
                    "email-body": "Hi%20User,%0D%0A%0D%0A%20%0D%0A%0D%0AYour%20expense%20claim%20with%20ID%20-%20claimid%20has%20been%20rejected%20.%0D%0A%0D%0A%20%0D%0A%0D%0ARegards,%0D%0A%0D%0Amanager",
                    "fromUser": "\"Manager\"",
                    "form-variables": [],
                    "subject": "\"Claim Rejected\"",
                    "body-replace-strings": [
                        {
                            "string": "user",
                            "value": "empfirstname"
                        },
                        {
                            "string": "manager",
                            "value": "empdetresp.data.results[0].firstname"
                        },
                        {
                            "string": "claimid",
                            "value": "insertresp.data.System_Generated_Properties.claimid"
                        }
                    ],
                    "notify-type": "Message Only",
                    "assignee-type": "Expression",
                    "assignee-exp": "empfirstname"
                },
                "name": "Notify Employee Reject",
                "id": "UserTask_gfftqe",
                "type": "bpmn:userTask",
                "events": []
            }
        ]
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_d571al",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1vm0clh",
                    "Bounds": {
                        "cx": 88.01562552899122,
                        "cy": 161.33593848347664,
                        "x": 71.00000052899122,
                        "width": 105.875,
                        "y": 132.00000098347664,
                        "height": 58.671875
                    },
                    "id": "StartEvent_1vm0clh_ve"
                },
                {
                    "bpmnElement": "ServiceTask_s794nx",
                    "Bounds": {
                        "cx": 284.0000000887281,
                        "cy": 161.3359428035841,
                        "x": 207.0199967317945,
                        "width": 153.9600067138672,
                        "y": 123.17094570275401,
                        "height": 76.32999420166016
                    },
                    "id": "ServiceTask_s794nx_ve"
                },
                {
                    "bpmnElement": "ServiceTask_uzi3f8",
                    "Bounds": {
                        "cx": 519.000000088728,
                        "cy": 161.3359428035841,
                        "x": 442.0199967317945,
                        "width": 153.9600067138672,
                        "y": 123.17094570275401,
                        "height": 76.32999420166016
                    },
                    "id": "ServiceTask_uzi3f8_ve"
                },
                {
                    "bpmnElement": "ServiceTask_veb4pr",
                    "Bounds": {
                        "cx": 956.0000294373931,
                        "cy": 161.3359422323923,
                        "x": 879.0200260804595,
                        "width": 153.9600067138672,
                        "y": 123.17094513156223,
                        "height": 76.32999420166016
                    },
                    "id": "ServiceTask_veb4pr_ve"
                },
                {
                    "bpmnElement": "UserTask_g8ramb",
                    "Bounds": {
                        "cx": 956.0000294373931,
                        "cy": 339.99999080475413,
                        "x": 879.0200260804595,
                        "width": 153.9600067138672,
                        "y": 301.83499370392406,
                        "height": 76.32999420166016
                    },
                    "id": "UserTask_g8ramb_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1v74abk",
                    "Bounds": {
                        "cx": 726.0000277237596,
                        "cy": 339.99999080475413,
                        "x": 649.020024366826,
                        "width": 153.9600067138672,
                        "y": 301.83499370392406,
                        "height": 76.32999420166016
                    },
                    "id": "ServiceTask_1v74abk_ve"
                },
                {
                    "bpmnElement": "ExclusiveGateway_5qmrvd",
                    "Bounds": {
                        "cx": 536.0156288146973,
                        "cy": 316.43750225915574,
                        "x": 512.0000038146973,
                        "width": 68,
                        "y": 303.21875225915574,
                        "height": 73.5625
                    },
                    "id": "ExclusiveGateway_5qmrvd_ve"
                },
                {
                    "bpmnElement": "UserTask_1l93ao4",
                    "Bounds": {
                        "cx": 339.9999942143593,
                        "cy": 287.0000053035841,
                        "x": 263.0199908574257,
                        "width": 153.9600067138672,
                        "y": 248.835008202754,
                        "height": 76.32999420166016
                    },
                    "id": "UserTask_1l93ao4_ve"
                },
                {
                    "bpmnElement": "UserTask_gfftqe",
                    "Bounds": {
                        "cx": 536.0156192143593,
                        "cy": 478.99999252832185,
                        "x": 459.0356158574257,
                        "width": 153.9600067138672,
                        "y": 440.8349954274918,
                        "height": 76.32999420166016
                    },
                    "id": "UserTask_gfftqe_ve"
                },
                {
                    "bpmnElement": "EndEvent_1q83osw",
                    "Bounds": {
                        "cx": 339.02343989908695,
                        "cy": 461.3359407186508,
                        "x": 322.00000239908695,
                        "width": 80.578125,
                        "y": 432.0000032186508,
                        "height": 58.671875
                    },
                    "id": "EndEvent_1q83osw_ve"
                },
                {
                    "bpmnElement": "EndEvent_65b31t",
                    "Bounds": {
                        "cx": 316.7343772330205,
                        "cy": 396.21875273348996,
                        "x": 299.7109397330205,
                        "width": 80.578125,
                        "y": 366.88281523348996,
                        "height": 58.671875
                    },
                    "id": "EndEvent_65b31t_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "107.00000052899122",
                            "y": "150.00000098347664"
                        },
                        {
                            "x": "157.00999858602881",
                            "y": "150.00000098347664"
                        },
                        {
                            "x": "157.00999858602881",
                            "y": "161.3359451675415"
                        },
                        {
                            "x": "207.0199966430664",
                            "y": "161.3359451675415"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_164f51v",
                    "id": "SequenceFlow_164f51v_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "360.9799967317945",
                            "y": "161.335945702754"
                        },
                        {
                            "x": "442.0199966430664",
                            "y": "161.3359451675415"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_tzwuso",
                    "id": "SequenceFlow_tzwuso_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "595.9799967317945",
                            "y": "161.335945702754"
                        },
                        {
                            "x": "879.0199967317944",
                            "y": "161.33594522591684"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_24esm",
                    "id": "SequenceFlow_24esm_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "956.0000260804595",
                            "y": "199.50094513156222"
                        },
                        {
                            "x": "956.0000261773171",
                            "y": "301.83500300224864"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_g5qqd9",
                    "id": "SequenceFlow_g5qqd9_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "879.0200260804595",
                            "y": "339.9999937039241"
                        },
                        {
                            "x": "802.9799967317945",
                            "y": "339.9999936592207"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_ocrvc3",
                    "id": "SequenceFlow_ocrvc3_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "649.020024366826",
                            "y": "339.9999937039241"
                        },
                        {
                            "x": "605.5100121498854",
                            "y": "339.9999937039241"
                        },
                        {
                            "x": "605.5100121498854",
                            "y": "328.2187407107558"
                        },
                        {
                            "x": "561.9999999329448",
                            "y": "328.2187407107558"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1aw85ma",
                    "id": "SequenceFlow_1aw85ma_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "512.0000038146973",
                            "y": "328.21875225915574"
                        },
                        {
                            "x": "464.49000022888185",
                            "y": "328.21875225915574"
                        },
                        {
                            "x": "464.49000022888185",
                            "y": "287.00000289916994"
                        },
                        {
                            "x": "416.97999664306644",
                            "y": "287.00000289916994"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_b604j",
                    "id": "SequenceFlow_b604j_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 484,
                        "cy": 285,
                        "x": 444,
                        "width": 80,
                        "y": 273,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "537.0000038146973",
                            "y": "353.21875225915574"
                        },
                        {
                            "x": "537.0000038146973",
                            "y": "397.02687757916283"
                        },
                        {
                            "x": "536.0156254577637",
                            "y": "397.02687757916283"
                        },
                        {
                            "x": "536.0156254577637",
                            "y": "440.8350028991699"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_10tf615",
                    "id": "SequenceFlow_10tf615_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 557,
                        "cy": 374,
                        "x": 517,
                        "width": 80,
                        "y": 362,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "459.0356158574257",
                            "y": "478.9999954274918"
                        },
                        {
                            "x": "408.5178050676899",
                            "y": "478.9999954274918"
                        },
                        {
                            "x": "408.5178050676899",
                            "y": "450"
                        },
                        {
                            "x": "357.9999942779541",
                            "y": "450"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_fo9r8r",
                    "id": "SequenceFlow_fo9r8r_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "339.9999908574257",
                            "y": "325.165008202754"
                        },
                        {
                            "x": "339.9999908574257",
                            "y": "346.02391176698734"
                        },
                        {
                            "x": "317.710937038064",
                            "y": "346.02391176698734"
                        },
                        {
                            "x": "317.710937038064",
                            "y": "366.8828153312206"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_er1fhr",
                    "id": "SequenceFlow_er1fhr_ve"
                }
            ]
        },
        "id": "Process_d571al_ve"
    },
    "collaboration": {}
}