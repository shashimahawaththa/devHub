public class TLHApexDemo {

    public static List<ABCD_s__c> alist;
    
    public TLHApexDemo() {
        alist = new List<ABCD_s__c>();
        ABCD_s__c a1 = new ABCD_s__c(Description__c='abc');
        ABCD_s__c a2 = new ABCD_s__c(Description__c='qwe');
        alist.add(a1);
        alist.add(a2);
        insert alist;
        system.debug('alist >>' + alist);
    }
    
    public void updateDemo() {
        alist = new List<ABCD_s__c>();
        alist = [select id, Description__c from ABCD_s__c];
        system.debug('alist >>' + alist);
        for(ABCD_s__c a: alist) {
            if(a.Description__c == 'abc') {
                system.debug('a >>' + a);
                a.Description__c = 'def';
            }
        }
        List<Database.SaveResult> srList = Database.update(alist);
        database.update(alist);
        system.debug('srList >>' + alist);
    }
    
}