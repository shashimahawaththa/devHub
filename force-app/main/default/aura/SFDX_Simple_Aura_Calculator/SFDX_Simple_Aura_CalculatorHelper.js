({
	helperMethodAdd : function(component) {	  
		let input1 = parseFloat(component.find('number1').get("v.value"));
        console.log(input1);	
		let input2 = parseFloat(component.find('number2').get("v.value"));
        console.log(input2);
        component.set("v.result", input1+input2);
	},
    
    helperMethodSub : function(component) {  
		let input1 = parseFloat(component.find('number1').get("v.value"));
        console.log(input1);	
		let input2 = parseFloat(component.find('number2').get("v.value"));
        console.log(input2);
        component.set("v.result", input1-input2);
	},
 
 	helperMethodMulti : function(component) {  
		let input1 = parseFloat(component.find('number1').get("v.value"));
        console.log(input1);	
		let input2 = parseFloat(component.find('number2').get("v.value"));
        console.log(input2);
        component.set("v.result", input1*input2);
	},
})