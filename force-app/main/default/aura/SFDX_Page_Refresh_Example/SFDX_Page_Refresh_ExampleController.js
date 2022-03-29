({
    createContact : function(component, event, helper) {
        event.preventDefault();
        var fields = event.getParam('fields');
        fields.AccountId = component.get("v.recordId");
        component.find('myForm').submit(fields);
    },
    
    handleSuccess: function(component, event, helper) {
        $A.get('e.force:refreshView').fire();
    }
})