public class testTLHController {

    public string a {get; set;}
    public string result {get; set;}
    
    public void debugIt() {
        system.debug('abc ?>>' + a);
        Account accObj = new Account(Name = a);
        database.saveresult sr = database.insert(accObj);
        result = sr.isSuccess() + '';
        system.debug('sr ?>>' + result);    
        if(sr.isSuccess()) {
             a = '';
        } else {
            system.debug('Error Occured ?>>' + sr);   
        }
    }
    public void clearRes() {
        a = '';
    }
    Integer count = 0;
                        
    public void incrementCounter() {
            count++;
    }
                    
    public Integer getCount() {
        return count;
    }
}