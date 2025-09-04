"use strict";

const router = require("express").Router();
const databaseConfig = require("../../database");
const db = require("knex")(databaseConfig.config);
const { isEmpty, getDateTime, isNonEmptyArray, formatTrim } = require("../../utilities/sharedFunctions");
// const { isEmpty, getDateTime, isNonEmptyArray, formatTrim } = require("shared-functions");
const addErrorLog = require("../../utilities/addErrorLog");
const validateSession = require("../../middleware/validate-session");
const validateSOSAssistantAdministrator = require("../../middleware/validate-sosAssistantAdministrator");
const validateSOSAssistantSystemAdministrator = require("../../middleware/validate-sosAssistantSystemAdministrator");

const controllerName = "sosAssistantUserApplication";
const tableName = "sosAssistantUserApplications";
const select = "*";
const activeWhere = { "active": true }; // * The value of active can be true or 1 depending on the database being used. -- 05/11/2022 MF
const orderBy = [{ column: "applicationID", order: "asc" }];

const componentName = `${controllerName}s-controller`;


/******************************
 ***** Get SOS Assistant User Applications *********
 ******************************/
router.get("/", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  db.select(select)
    .from(tableName)
    .where(activeWhere)
    .orderBy(orderBy)
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ transactionSuccess: true, errorOccurred: false, message: "Successfully retrieved records.", records });

      } else {

        response.status(200).json({ transactionSuccess: false, errorOccurred: false, message: "No records found." });

      };

    })
    .catch((error) => {

      console.error("get / error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "get /", {}, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "No records found." });

    });

});


/***************************
 *** Add SOS Assistant User Application *******
 ***************************/
router.post("/", validateSession, validateSOSAssistantSystemAdministrator, (request, response) => {

  db(tableName)
    .returning(select)
    .insert({
      applicationName: request.body.recordObject.applicationName
    })
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ primaryKeyID: records[0].applicationID, transactionSuccess: true, errorOccurred: false, message: "Successfully added.", records });

      } else {

        response.status(200).json({ primaryKeyID: null, transactionSuccess: false, errorOccurred: false, message: "Nothing to add." });

      };

    })
    .catch((error) => {

      console.error("post / error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "post /", request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully added." });

    });

});


/***************************
 *** Update SOS Assistant User Application *******
 ***************************/
router.put("/:applicationID", validateSession, validateSOSAssistantSystemAdministrator, (request, response) => {

  // * Check the parameters for SQL injection before creating the SQL statement. -- 08/09/2021 MF

  let applicationID = !isEmpty(request.params.applicationID) ? request.params.applicationID : "";

  if (isNaN(formatTrim(applicationID))) {

    applicationID = 0;

  } else {

    applicationID = parseInt(applicationID);

  };

  db(tableName)
    .where({ applicationID: applicationID })
    .returning(select)
    .update({
      applicationName: request.body.recordObject.applicationName,
      active: request.body.recordObject.active
    })
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ primaryKeyID: records[0].applicationID, transactionSuccess: true, errorOccurred: false, message: "Successfully updated.", records });

      } else {

        response.status(200).json({ primaryKeyID: request.params.applicationID, transactionSuccess: false, errorOccurred: false, message: "Nothing to update." });

      };

    })
    .catch((error) => {

      console.error(`put /:${controllerName}ID error`, error);

      addErrorLog(response.locals.partner.databaseName, componentName, `put /:${controllerName}ID`, request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully updated." });

    });

});


module.exports = router;