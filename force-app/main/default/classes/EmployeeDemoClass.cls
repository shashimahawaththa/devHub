public class EmployeeDemoClass {
    public EmployeeDemoClass(){}
    
    
    public Integer calculateYearOfBirth(Integer age) {
        
    List<String> stringList = new List<String>();
        stringList.add('Shashika');
        stringList.add('Mahiru');
        stringList.add('Sahiru');
        
    for(String thisString : stringList) {
        System.debug('thisString -- ' + thisString);
    }
        Date todaysDate = Date.today();
        Integer year = todaysDate.year();
        System.debug('todaysDate -- ' + todaysDate);
        System.debug('year -- ' + year);
        System.debug('age -- ' + (year - age));
        return year - age;
    }
}