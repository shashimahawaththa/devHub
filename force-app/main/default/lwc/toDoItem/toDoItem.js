import { api, LightningElement } from 'lwc';

export default class ToDoItem extends LightningElement {
    @api itemName = 'New Item';
}