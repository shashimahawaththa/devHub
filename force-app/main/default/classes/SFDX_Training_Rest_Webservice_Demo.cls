@RestResource(urlMapping='/querySomething')
global with sharing class SFDX_Training_Rest_Webservice_Demo {

    @HttpGet
    global static List<SObject> respondWithGet() {
        return database.query('select id,name from account');
    }

    @HttpPost
    global static List<SObject> respondWithPost(String accId) {
        return database.query('select id,name from account where id= :accId');
    }
}
