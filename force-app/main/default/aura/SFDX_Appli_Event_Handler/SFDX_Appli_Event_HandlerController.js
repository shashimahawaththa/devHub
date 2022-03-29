({
    handlerFiredEvent : function(component, event, helper) {
        let msg = event.getParam("message");
        console.log("Message Inside App handler controller" + msg);
        component.set('v.displayMsg', msg);
        
        let conuntVal = parseInt(component.get('v.countEvt')) + 1;
        component.set('v.countEvt', conuntVal);

    },
    handleSuccess: function(component, event, helper) {
       console.log("Value change detected!!!");
    }
})
