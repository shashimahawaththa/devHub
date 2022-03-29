({
    fireEvent : function(component, event, helper) {
        let msg = "Hello Lightning!";
        let compEvent = component.getEvent("SFDX_Component_Example");
        compEvent.setParams({
            "message" : "Hey, Event is fired! " + msg
        })
        console.log("Message Inside notifier controller" + compEvent.getParam("message"));
        compEvent.fire();
    }
})
