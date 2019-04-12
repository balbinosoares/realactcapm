# Relevant Activities CAPM 
Backend App for Relevant Activities example using SAP Cloud Application Programming Model

## What is this?
This application aims to demonstrate the use of SAP Cloud Application Programming Model in the development of an application. The complete project will be many technologies for backend and a SAP Fiori App for Frontend;

The goal will be to build an app to record important activities being carried out in the current week and what was planned for next week. Always having the vision of the previous week, current week and next week. This is the repository for the backend application in CAPM.



## Get Started
### Development Environment 
We recommend using Visual Studio Code as local development environment. To get the language support for the CDS objects you must manually install the corresponding extension for Visual Studio Code.
To install this extension, proceed as follows
1. Download the vsix file from [SAP Development Tools -> Cloud -> CDS Language Support for Visual Studio Code](https://tools.hana.ondemand.com/#cloud)
2. Install the downloaded vsix file in Visual Studio Code using command Install from VSIX...

### NPM Registry
The NPM packages for CDS are not part of the default NPM registry. As a consequence, you must configure your registry to lookup the packages in the SAP NPM registry. Enter the following command:
```sh
npm set @sap:registry=https://npm.sap.com
```
### CDS Command Line Tools
Install the CDS command line tools 
```sh
npm i -g @sap/cds
```
### Build the Project
To build the project, walk through the following steps 
1. Download or clone the repository.
2. Navigate to the folder of your local repository
3. Execute the command `npm install`to install the relevant NPM packages 
4. Execute the command `npm run build` to trigger a clean build of the project
5. Execute the command `npm start` to startup the project locally

You can now access the services via
```sh
 http://localhost:4004
```

### Initialize the Local Database
Run the following command to Initialize your local SQLite DB:
```sh
cds deploy --to sqlite:db/relactcapm.db
```
Do not forget to repeat this step to initialize the local database whenever you changed the datamodel

### Recommended Extensions
Local execution makes use of [SQLite3](https://www.sqlite.org/index.html) as database. To get an insight into the database from visual studio code we recommend to install the [SQLite Extension](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite) from the Visual Studio Marketplace   


## Additional Resources
Here are some additional resources for the SAP Cloud Application Programming Model (CAPM):
- [help.sap.com](https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/00823f91779d4d42aa29a498e0535cdf.html)
- [developers.sap.com tutorial](https://developers.sap.com/tutorials/cp-apm-nodejs-create-service.html)
- [Hands-on SAP dev with qmacro – live stream series](https://blogs.sap.com/2019/01/16/hands-on-sap-dev-with-qmacro-new-live-stream-series/)
