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
const validateUser = require("../../middleware/validate-user");
const validateAdministrator = require("../../middleware/validate-administrator");
const validateSystemAdministrator = require("../../middleware/validate-systemAdministrator");

const controllerName = "user";
const tableName = "users";
const viewName = "vw_users";
const select = "*";
// const activeWhere = { "active": true }; // * The value of active can be true or 1 depending on the database being used. -- 05/11/2022 MF
const orderBy = [{ column: "lastName", order: "asc" }, { column: "firstName", order: "asc" }];

const componentName = `${controllerName}s-controller`;

let records;
let loginSuccess;


/******************************
 ***** Get Users *********
 ******************************/
router.get("/", validateSession, validateSystemAdministrator, (request, response) => {

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
 ***** Get User Roles *********
 ******************************/
router.get("/userRoles", validateSession, validateAdministrator, (request, response) => {

  db.select(select)
    .from("userRoles")
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

      console.error("get /userRoles error", error);

      addErrorLog(response.locals.partner.databaseName, componentName, "get /userRoles", {}, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "No records found." });

    });

});


/******************************
 ***** Get User *********
 ******************************/
router.get("/user", validateSession, validateUser, (request, response) => {

  let userID = !isEmpty(request.user.userID) ? request.user.userID : "";

  if (isNaN(formatTrim(userID))) {

    userID = 0;

  } else {

    userID = parseInt(userID);

  };

  db.select(select)
    .from(viewName)
    .where({ userID: userID })
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


/***************************
 *** Add User *******
 ***************************/
router.post("/", validateSession, validateSystemAdministrator, (request, response) => {

  db(tableName)
    .returning(select)
    .insert({
      username: request.body.recordObject.username,
      firstName: request.body.recordObject.firstName,
      lastName: request.body.recordObject.lastName,
      email: request.body.recordObject.email,
      // password: request.body.recordObject.password,
      password: bcrypt.hashSync(request.body.recordObject.password),
      userRoleID: request.body.recordObject.userRoleID,
      requestedBy: request.body.recordObject.requestedBy,
      requestDate: request.body.recordObject.requestDate,
      notes: request.body.recordObject.notes
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


/* ***********************************
 *** User Login **********************
*********************************** */
router.post("/login", validateSession, (request, response) => {

  let username = "";
  let password = "";

  if (!isEmpty(request.body.recordObject.username)) {

    username = request.body.recordObject.username;

  };

  if (!isEmpty(request.body.recordObject.password)) {

    password = request.body.recordObject.password;

  };

  let where = { username: username, active: true };

  db.select(select)
    .from(viewName)
    .where(where)
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
                // requestedBy: request.body.recordObject.requestedBy,
                // requestDate: request.body.recordObject.requestDate,
                // notes: request.body.recordObject.notes,
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



/***************************
 *** Update User *******
 ***************************/
router.put("/", validateSession, validateUser, (request, response) => {

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
 *** Update User By Administrator *******
 ***************************/
router.put("/:userID", validateSession, validateSystemAdministrator, (request, response) => {

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
    userRoleID: request.body.recordObject.userRoleID,
    requestedBy: request.body.recordObject.requestedBy,
    requestDate: request.body.recordObject.requestDate,
    notes: request.body.recordObject.notes,
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
          // requestedBy: records[0].requestedBy,
          // requestDate: records[0].requestDate,
          // notes: records[0].notes,
          active: records[0].active
        }];

        response.status(200).json({ primaryKeyID: records[0].userID, transactionSuccess: true, errorOccurred: false, message: "Successfully updated.", records: returnRecords });

      } else {

        response.status(200).json({ primaryKeyID: request.params.userID, transactionSuccess: false, errorOccurred: false, message: "Nothing to update." });

      };

    })
    .catch((error) => {

      console.error(`put /:${controllerName}ID error`, error);

      addErrorLog(response.locals.partner.databaseName, componentName, `put /:${controllerName}ID`, request.body.recordObject, error, false, false);

      response.status(500).json({ transactionSuccess: false, errorOccurred: true, message: "Not successfully updated." });

    });

});


module.exports = router;