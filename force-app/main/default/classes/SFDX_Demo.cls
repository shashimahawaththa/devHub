public with sharing class SFDX_Demo {
    public SFDX_Demo() {

    }


    @future
    public static void futureMethodDemo() {
        List<Account> accountList;
        accountList = [select id from account limit 25];
        for(Account acc:accountList) {
            system.debug('acc >>'+acc);
        }
        
    }
}
