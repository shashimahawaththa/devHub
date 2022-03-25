global class SFDX_Training_Webservice_Demo {
   
    //Soap API

    //'webservice' keyword will be used to generate WSDL by the system
    //It can be used in variable and methods
    //method can also accept SObject 
    //top most level of the class, hence no local, everthing should be global
    //return values --> NOT Map,Set,Pattern,Match & exception
    webservice static String querySomething(String str) {
        if(str == '123') {
            return 'success';
        } else {
            return 'error';
        }         
    }
}
