({
    fireEvent : function(component, event, helper) {

        let msg = "Hello Lightning!";
        // Here 'e' is the value provider specific to events
        let appliEvent = $A.get("e.c:SFDX_Application_Event_xample");
        appliEvent.setParams({
            "message" : "Hey, Event is fired! " + msg
        })
        console.log("Message Inside App notifier controller" + appliEvent.getParam("message"));
        appliEvent.fire();
    }
})
