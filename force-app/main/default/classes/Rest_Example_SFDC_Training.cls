public with sharing class Rest_Example_SFDC_Training {
    public Rest_Example_SFDC_Training() {

        Http http = new Http();
        HttpRequest req = new HttpRequest();

//GET
        //req.setEndpoint('http://dummy.restapiexample.com/api/v1/employee/1');
        //req.setMethod('GET');
//POST
        String payLoad = '{"name":"test","salary":"122323","age":"23"}';
        req.setEndpoint('http://dummy.restapiexample.com/api/v1/create');
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json');
        req.setBody(payLoad);
        //REST VERBS - GET, PUT, POST, DELETE //sfdc
        HttpResponse resp = Http.send(req);
        system.debug('resp >> ' + resp.getBody());

        Map<String, Object> result = (Map<String, Object>)JSON.deserializeUntyped(resp.getBody());

        for(String key : result.keySet()) {
            system.debug('key >>' + key);
            system.debug('val >>' + result.get(key));
        }

    }
}