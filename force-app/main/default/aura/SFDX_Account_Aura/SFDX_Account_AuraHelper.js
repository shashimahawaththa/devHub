({
    getAccountListHelper : function(component) {

        component.set("v.Columns", [
            {label:"Account Id", fieldName:"Id", type:"text"},
            {label:"Account Name", fieldName:"Name", type:"text"}
        ]);

        //here this 'c' value provider is refering to apex controller's method 
        let action = component.get('c.fetchAccounts'); 
        action.setParams({
            'num1' : 10
        });
        //Its going to be a aync call and hence defining callbacks
        action.setCallback(this, function(response) {
            let state = response.getState();
            if(state == 'SUCCESS') {
                let respVal = response.getReturnValue();
                console.log('respVal >> ' + JSON.stringify(respVal));
                component.set('v.accList', respVal);
            } else {
                console.log('error');
            }
        });
        $A.enqueueAction(action);
    },
})
