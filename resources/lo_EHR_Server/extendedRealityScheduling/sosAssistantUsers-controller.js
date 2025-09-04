"use strict";

const router = require("express").Router();
const databaseConfig = require("../../database");
const db = require("knex")(databaseConfig.config);
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const jwtSecret = require("../../jwtSecret");
const { isEmpty, getDateTime, isNonEmptyArray, formatTrim } = require("../../utilities/sharedFunctions");
// const { isEmpty, getDateTime, isNonEmptyArray, formatTrim } = require("shared-functions");
const addErrorLog = require("../../utilities/addErrorLog");
const validateSession = require("../../middleware/validate-session");
const validateSOSAssistantUser = require("../../middleware/validate-sosAssistantUser");
const validateSOSAssistantAdministrator = require("../../middleware/validate-sosAssistantAdministrator");

const controllerName = "sosAssistantUsers";
const tableName = "sosAssistantUsers";
const viewName = "vw_sosAssistantUsers";
const applicationsTableName = "sosAssistantUsersApplications";
const select = "*";
// const activeWhere = { "active": true }; // * The value of active can be true or 1 depending on the database being used. -- 05/11/2022 MF
const orderBy = [{ column: "lastName", order: "asc" }, { column: "firstName", order: "asc" }];

const componentName = `${controllerName}s-controller`;

let records;
let loginSuccess;


/******************************
 ***** Get SOS Assistant Users *********
 ******************************/
router.get("/", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  db.select(select)
    .from(viewName)
    // .where(activeWhere)
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


/******************************
 ***** Get SOS Assistant User *********
 ******************************/
router.get("/user/:applicationName", validateSession, validateSOSAssistantUser, (request, response) => {

  let userID = !isEmpty(request.user.userID) ? request.user.userID : "";

  if (isNaN(formatTrim(userID))) {

    userID = 0;

  } else {

    userID = parseInt(userID);

  };

  let applicationName = !isEmpty(request.params.applicationName) ? decodeURIComponent(request.params.applicationName) : "";

  db.select(select)
    .from(viewName)
    .where({ userID: userID })
    .whereLike("applications", `%${applicationName}%`)
    // .where(activeWhere)
    // .orderBy(orderBy)
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((results) => {

      records = results;

      records[0].previousLastLogin = records[0].lastLogin;
      records[0].lastLogin = getDateTime();
      delete records[0].password;

      db(tableName)
        .where({ userID: userID })
        // .returning(select)
        .update({
          lastLogin: getDateTime()
        })
        .withSchema(`${response.locals.partner.databaseName}.dbo`)
        .then((records) => {

          // if (isNonEmptyArray(records)) {

          //   response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully updated.", records });

          // } else {

          //   response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to update." });

          // };

        })
        .catch((error) => {

          console.error("get /user error", error);

          addErrorLog(response.locals.partner.databaseName, componentName, "get /user error", request.body.recordObject, error, false, false);

          // response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully updated." });

        });

      if (isNonEmptyArray(records)) {

        response.status(200).json({ transactionSuccess: true, errorOccurred: false, message: "Successfully retrieved records.", records });

      } else {

        response.status(200).json({ transactionSuccess: false, errorOccurred: false, message: "No records found." });

      };

    })
    .catch((error) => {

      console.error("get /user error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "get /user", {}, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "No records found." });

    });

});


/******************************
 ***** Get SOS Assistant User Applications By userID *********
 ******************************/
router.get("/applications/:userID", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  // * Check the parameters for SQL injection before creating the SQL statement. -- 08/09/2021 MF

  let userID = !isEmpty(request.params.userID) ? request.params.userID : "";

  if (isNaN(formatTrim(userID))) {

    userID = 0;

  } else {

    userID = parseInt(userID);

  };

  db.select(select)
    .from(applicationsTableName)
    .where({ userID: userID })
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ transactionSuccess: true, errorOccurred: false, message: "Successfully retrieved records.", records });

      } else {

        response.status(200).json({ transactionSuccess: false, errorOccurred: false, message: "No records found." });

      };

    })
    .catch((error) => {

      console.error("get /applications/:userID error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "get /applications/:userID", {}, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "No records found." });

    });

});


/******************************
 ***** Get SOS Assistant User Requests *********
 ******************************/
router.get("/sosAssistantUserRequests", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  db.select(select)
    .from("vw_sosAssistantUserRequests")
    // .where(activeWhere)
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

      console.error("get /sosAssistantUserRequests error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "get /sosAssistantUserRequests", {}, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "No records found." });

    });

});


/******************************
 ***** Get SOS Assistant User Request By sosAssistantUserRequestID *********
 ******************************/
router.get("/sosAssistantUserRequests/:sosAssistantUserRequestID", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  // * Check the parameters for SQL injection before creating the SQL statement. -- 08/09/2021 MF

  let sosAssistantUserRequestID = !isEmpty(request.params.sosAssistantUserRequestID) ? request.params.sosAssistantUserRequestID : "";

  if (isNaN(formatTrim(sosAssistantUserRequestID))) {

    sosAssistantUserRequestID = 0;

  } else {

    sosAssistantUserRequestID = parseInt(sosAssistantUserRequestID);

  };

  db.select(select)
    .from(viewName)
    .where({ sosAssistantUserRequestID: sosAssistantUserRequestID })
    // .where(activeWhere)
    // .orderBy(orderBy)
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ transactionSuccess: true, errorOccurred: false, message: "Successfully retrieved records.", records });

      } else {

        response.status(200).json({ transactionSuccess: false, errorOccurred: false, message: "No records found." });

      };

    })
    .catch((error) => {

      console.error("get /sosAssistantUserRequests/:sosAssistantUserRequestID error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "get /sosAssistantUserRequests/:sosAssistantUserRequestID", {}, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "No records found." });

    });

});


/***************************
 *** Add SOS Assistant User *******
 ***************************/
router.post("/", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  db(tableName)
    .returning(select)
    .insert({
      username: request.body.recordObject.username,
      firstName: request.body.recordObject.firstName,
      lastName: request.body.recordObject.lastName,
      email: request.body.recordObject.email,
      // password: request.body.recordObject.password,
      password: bcrypt.hashSync(request.body.recordObject.password),
      partnerSiteID: request.body.recordObject.partnerSiteID,
      userRoleID: request.body.recordObject.userRoleID
    })
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully added.", records });

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
 *** Add SOS Assistant User Request *******
 ***************************/
router.post("/sosAssistantUserRequests", validateSession, (request, response) => {

  db("sosAssistantUserRequests")
    .returning(select)
    .insert({
      requestTypeID: request.body.recordObject.requestTypeID,
      firstName: request.body.recordObject.firstName,
      lastName: request.body.recordObject.lastName,
      email: request.body.recordObject.email,
      partnerSiteID: request.body.recordObject.partnerSiteID,
      positionID: request.body.recordObject.positionID,
      programID: request.body.recordObject.programID,
      simulationDate: request.body.recordObject.simulationDate,
      details: request.body.recordObject.details
    })
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ primaryKeyID: records[0].sosAssistantUserRequestID, transactionSuccess: true, errorOccurred: false, message: "Successfully added.", records });

      } else {

        response.status(200).json({ primaryKeyID: null, transactionSuccess: false, errorOccurred: false, message: "Nothing to add." });

      };

    })
    .catch((error) => {

      console.error("post /sosAssistantUserRequests error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "post /sosAssistantUserRequests", request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully added." });

    });

});


/************************************
 *** Add SOS Assistant Users Application *******
 ***********************************/
router.post("/sosAssistantUsersApplications/:userID", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  // * Check the parameters for SQL injection before creating the SQL statement. -- 08/09/2021 MF

  let userID = !isEmpty(request.params.userID) ? request.params.userID : "";

  if (isNaN(formatTrim(userID))) {

    userID = 0;

  } else {

    userID = parseInt(userID);

  };

  let recordsToInsert = true;

  db(applicationsTableName)
    .where({ userID: userID })
    .returning(select)
    .del()
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((results) => {

      records = results;

      if (isNonEmptyArray(request.body.recordObject)) {

        return db(applicationsTableName)
          .returning(select)
          .insert(request.body.recordObject)
          .withSchema(`${response.locals.partner.databaseName}.dbo`);

      } else {

        recordsToInsert = false;

        // if (isNonEmptyArray(records)) {

        response.status(200).json({ /* primaryKeyID: records[0].userID, */ transactionSuccess: true, errorOccurred: false, message: "Successfully deleted.", records });

        // } else {

        //   response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to delete." });

        // };

      };

    })
    .then((records) => {

      if (recordsToInsert === true) {

        // if (isNonEmptyArray(records)) {

        response.status(200).json({ /* primaryKeyID: records[0].userID, */ transactionSuccess: true, errorOccurred: false, message: "Successfully added.", records });

        // } else {

        //   response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to add." });

        // };

      };

    })
    .catch((error) => {

      console.error("post /sosAssistantUsersApplications error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "post /sosAssistantUsersApplications", request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully added." });

    });

});


/* ***********************************
 *** SOS Assistant User Login *******
*********************************** */
// * Used by the EHR (XR) and SOS Assistant applications. -- 01/24/2025 MF
router.post("/login", validateSession, (request, response) => {

  let username = !isEmpty(request.body.recordObject.username) ? request.body.recordObject.username : "";

  let password = !isEmpty(request.body.recordObject.password) ? request.body.recordObject.password : "";

  let applicationName = !isEmpty(request.body.recordObject.applicationName) ? request.body.recordObject.applicationName : "";

  let where = { username: username, active: true };

  db.select(select)
    .from(viewName)
    .where(where)
    .whereLike("applications", `%${applicationName}%`)
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then(
      loginSuccess = (records) => {

        if (isNonEmptyArray(records)) {

          bcrypt.compare(password, records[0].password, (error, matches) => {

            if (matches) {

              records[0].previousLastLogin = records[0].lastLogin;
              records[0].lastLogin = getDateTime();
              delete records[0].password;

              db(tableName)
                .where({ userID: records[0].userID })
                // .returning(select)
                .update({
                  lastLogin: getDateTime()
                })
                .withSchema(`${response.locals.partner.databaseName}.dbo`)
                .then((records) => {

                  // if (isNonEmptyArray(records)) {

                  //   response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully updated.", records });

                  // } else {

                  //   response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to update." });

                  // };

                })
                .catch((error) => {

                  console.error("post /login update lastLogin error", error);

                  addErrorLog(response.locals.partner.databaseName, componentName, "post /login update lastLogin error", { username: request.body.recordObject.username }, error, false, false);

                  // response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully updated." });

                });

              // ! pm2 doesn't see the .env variables being used here. -- 08/13/2021 MF
              // let token = jwt.sign({ userID: records[0].userID }, process.env.JWT_SECRET, { expiresIn: "1d" });
              // let token = jwt.sign({ userID: records[0].userID }, jwtSecret, { expiresIn: "1d" });
              let token = jwt.sign({ userID: records[0].userID, username: records[0].username }, jwtSecret, { expiresIn: "1d" });

              response.status(200).json({
                // ? Need to return all the properties of the user to the browser? -- 03/28/2021 MF
                // user:   records[0],
                records: records,
                // username: request.body.recordObject.username,
                // firstName: request.body.recordObject.firstName,
                // lastName: request.body.recordObject.lastName,
                // email: request.body.recordObject.email,
                // password: request.body.recordObject.password,
                // userRoleID: request.body.recordObject.userRoleID,
                // lastLogin: request.body.recordObject.lastLogin,
                // active: request.body.recordObject.active,
                transactionSuccess: true,
                errorOccurred: false,
                message: `Successfully authenticated ${controllerName}.`,
                sessionToken: token
              });

            } else {

              // addErrorLog(response.locals.partner.databaseName, componentName, "post /login Login failed. 401", {username: request.body.recordObject.username}, null, false, false);

              response.status(401).json({ transactionSuccess: true, errorOccurred: false, isLoggedIn: false, message: "Login failed.", error: "Login failed." });

            };

          });

        } else {

          // addErrorLog(response.locals.partner.databaseName, componentName, "post /login Login failed. 401", {username: request.body.recordObject.username}, null, false, false);

          response.status(401).json({ transactionSuccess: true, errorOccurred: false, isLoggedIn: false, message: "Failed to authenticate.", error: "Failed to authenticate." });

        };

      },
      error => {

        console.error("post /login Failed to process. 501 error", error);

        addErrorLog(response.locals.partner.databaseName, componentName, "post /login Login failed. 501", { username: request.body.recordObject.username }, error, false, false);

        response.status(501).send({ transactionSuccess: false, errorOccurred: true, isLoggedIn: false, message: "Failed to process.", error: "Failed to process." });

      }
    )
    .catch((error) => {

      console.error("post /login error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "post /login 500 error", { username: request.body.recordObject.username }, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, isLoggedIn: false, message: "Login failed.", error });

    });
});


// /***************************
//  *** Update SOS Assistant User Request *******
//  ***************************/
router.put("/sosAssistantUserRequests/:sosAssistantUserRequestID", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  // * Check the parameters for SQL injection before creating the SQL statement. -- 08/09/2021 MF

  let sosAssistantUserRequestID = !isEmpty(request.params.sosAssistantUserRequestID) ? request.params.sosAssistantUserRequestID : "";

  if (isNaN(formatTrim(sosAssistantUserRequestID))) {

    sosAssistantUserRequestID = 0;

  } else {

    sosAssistantUserRequestID = parseInt(sosAssistantUserRequestID);

  };

  let recordObject = {
    // requestTypeID: request.body.recordObject.requestTypeID,
    // firstName: request.body.recordObject.firstName,
    // lastName: request.body.recordObject.lastName,
    // email: request.body.recordObject.email,
    // partnerSiteID: request.body.recordObject.partnerSiteID,
    // positionID: request.body.recordObject.positionID,
    // programID: request.body.recordObject.programID,
    // simulationDate: request.body.recordObject.simulationDate,
    // details: request.body.recordObject.details,
    completed: request.body.recordObject.completed,
    active: request.body.recordObject.active
  };

  db("sosAssistantUserRequests")
    .where({ sosAssistantUserRequestID: sosAssistantUserRequestID })
    .returning(select)
    .update(recordObject)
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully updated.", records });

      } else {

        response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to update." });

      };

    })
    .catch((error) => {

      console.error("put /sosAssistantUserRequests/:sosAssistantUserRequestID error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "put /sosAssistantUserRequests/:sosAssistantUserRequestID", request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully updated." });

    });

});


/***************************
 *** Update SOS Assistant User *******
 ***************************/
router.put("/", validateSession, validateSOSAssistantUser, (request, response) => {

  let userID = !isEmpty(request.user.userID) ? request.user.userID : "";

  let recordObject = {
    // username: request.body.recordObject.username,
    firstName: request.body.recordObject.firstName,
    lastName: request.body.recordObject.lastName,
    email: request.body.recordObject.email,
    // password: request.body.recordObject.password,
    // password: bcrypt.hashSync(request.body.recordObject.password),
    // userRoleID: request.body.recordObject.userRoleID,
    // requestedBy: request.body.recordObject.requestedBy,
    // requestDate: request.body.recordObject.requestDate,
    // notes: request.body.recordObject.notes,
    // active: request.body.recordObject.active,
    updatedBy: request.body.recordObject.updatedBy,
    updateDate: getDateTime()
  };

  // * If the user doesn't enter a password, then it isn't updated -- 03/28/2021 MF
  if (!isEmpty(request.body.recordObject.password)) {

    Object.assign(recordObject, { password: bcrypt.hashSync(request.body.recordObject.password) });

  };

  db(tableName)
    .where({ userID: userID })
    .returning(select)
    .update(recordObject)
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        // ? Need to return all the properties of the user to the browser? -- 03/28/2021 MF
        let returnRecords = [{
          username: records[0].username,
          firstName: records[0].firstName,
          lastName: records[0].lastName,
          email: records[0].email
          // password: records[0].password
        }];

        response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully updated.", records: returnRecords });

      } else {

        response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to update." });

      };

    })
    .catch((error) => {

      console.error("put / error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "put /", request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully updated." });

    });

});


/***************************
 *** Update SOS Assistant User By Administrator *******
 ***************************/
router.put("/:userID", validateSession, validateSOSAssistantAdministrator, (request, response) => {

  // * Check the parameters for SQL injection before creating the SQL statement. -- 08/09/2021 MF

  let userID = !isEmpty(request.params.userID) ? request.params.userID : "";

  if (isNaN(formatTrim(userID))) {

    userID = 0;

  } else {

    userID = parseInt(userID);

  };

  let recordObject = {
    username: request.body.recordObject.username,
    firstName: request.body.recordObject.firstName,
    lastName: request.body.recordObject.lastName,
    email: request.body.recordObject.email,
    // password: request.body.recordObject.password,
    // password: bcrypt.hashSync(request.body.recordObject.password),
    partnerSiteID: request.body.recordObject.partnerSiteID,
    userRoleID: request.body.recordObject.userRoleID,
    updatedBy: request.body.recordObject.updatedBy,
    active: request.body.recordObject.active,
    updateDate: getDateTime()
  };

  // * If the user doesn't enter a password, then it isn't updated -- 03/28/2021 MF
  if (!isEmpty(request.body.recordObject.password)) {

    Object.assign(recordObject, { password: bcrypt.hashSync(request.body.recordObject.password) });

  };

  if (request.body.recordObject.active === 0) {

    Object.assign(recordObject, { inactiveDate: getDateTime() });

  };

  db(tableName)
    .where({ userID: userID })
    .returning(select)
    .update(recordObject)
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        // ? Need to return all the properties of the user to the browser? -- 03/28/2021 MF
        let returnRecords = [{
          username: records[0].username,
          firstName: records[0].firstName,
          lastName: records[0].lastName,
          email: records[0].email,
          // password: records[0].password,
          userRoleID: records[0].userRoleID,
          active: records[0].active
        }];

        response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully updated.", records: returnRecords });

      } else {

        response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to update." });

      };

    })
    .catch((error) => {

      console.error("put /:userID error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "put /:userID", request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully updated." });

    });

});


/***************************
 *** Delete SOS Assistant Users Applications *******
 ***************************/
router.delete("/sosAssistantUsersApplications/:userID", validateSession, (request, response) => {

  // * Check the parameters for SQL injection before creating the SQL statement. -- 08/09/2021 MF

  let userID = !isEmpty(request.params.userID) ? request.params.userID : "";

  if (isNaN(formatTrim(userID))) {

    userID = 0;

  } else {

    userID = parseInt(userID);

  };

  db(applicationsTableName)
    .where({ userID: userID })
    .returning(select)
    .del()
    .withSchema(`${response.locals.partner.databaseName}.dbo`)
    .then((records) => {

      if (isNonEmptyArray(records)) {

        response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully deleted.", records });

      } else {

        response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to delete." });

      };

    })
    .catch((error) => {

      console.error(`/sosAssistantUsersApplications/:userID error`, error);

      addErrorLog(response.locals.partner.databaseName, componentName, `/sosAssistantUsersApplications/:userID`, { userID: request.params.userID }, error, true, true);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully deleted." });

    });

});


module.exports = router;