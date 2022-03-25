public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> fetchAccounts(Integer num1){
        List<account> accList = [SELECT id, name
        FROM Account];
        system.debug('acc list >>' + accList);
        return accList;
    }
}
