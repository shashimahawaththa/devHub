trigger AccountTrigger on Account (before insert, before update, after update) {

    Boolean bypassFlag = Trigger_Override__c.getInstance()?.Account_Trigger__c; //This is the way of null check in Apex
    
    if(!bypassFlag) {
            //AccountTriggerHandler.checkRecursive = true;
            AccountTriggerHandler accHandler = new AccountTriggerHandler();
           /* if(trigger.isBefore && trigger.isInsert) {
                accHandler.handleBeforeInsert(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
            }
            if(trigger.isBefore && trigger.isUpdate) {
                accHandler.handleBeforeInsert(trigger.new, trigger.oldMap);
            }*/
            if(trigger.isAfter && trigger.isUpdate) {
                accHandler.handleAfterUpdate(trigger.new, trigger.oldMap);
            }
    }

}