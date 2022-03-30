import { LightningElement, track, wire } from 'lwc';
import getAccList from '@salesforce/apex/AccountController.fetchAccounts'
export default class HelloWorld extends LightningElement {
    greeting = "Welcome";
    // wire should be global to the class, not inside the method
    @wire(getAccList, {num1:5})
    accounts;

    changeHandler(event) {
        this.greeting = event.target.value;
    }
}