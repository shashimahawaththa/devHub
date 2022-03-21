public inherited sharing class AccountTriggerHandler {

    public static boolean checkRecursive = false;
    
    public void handleAfterUpdate(List<account> newList, Map<id, account> oldMap) {
        update [select id from contact limit 1];
    }
}