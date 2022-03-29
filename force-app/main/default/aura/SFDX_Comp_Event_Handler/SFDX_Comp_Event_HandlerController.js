({
    handlerFiredEvent : function(component, event, helper) {
        let msg = event.getParam("message");
        console.log("Message Inside handler controller" + msg);
        component.set('v.displayMsg', msg);
        
        console.log(component.get('v.displayMsg'));
        let conuntVal = parseInt(component.get('v.countEvt')) + 1;
        component.set('v.countEvt', conuntVal);
    }
})
