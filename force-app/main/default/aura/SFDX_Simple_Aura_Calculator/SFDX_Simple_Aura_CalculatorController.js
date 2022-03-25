({
	myAction : function(component, event, helper) {
        let clickedButton = event.getSource();
        let op = clickedButton.get("v.label");
        console.log(op);
        if(op == 'Add') {            
         helper.helperMethodAdd(component);
        } else if(op == 'Sub') {            
         helper.helperMethodSub(component);
        } else if(op == 'Multi') {            
         helper.helperMethodMulti(component);
        }
        
	}
})