public class Acct_Cnt_Ext_1 {
     private final Account acct;
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard controller.
    public Acct_Cnt_Ext_1(ApexPages.StandardController stdController) {
        this.acct = (Account)stdController.getRecord();
    }
    public String getGreeting() {
        return 'Hello ' + acct.name + '----' + acct.id ;
    }
    
   // ApexPages.StandardSetController must be instantiated for standard list controllers
    public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                    [SELECT Name, CloseDate,stageName FROM Opportunity where stageName <> '']));
            }
            return setCon;
        }
        set;
    }
    // Initialize setCon and return a list of records
    public list<Opportunity> getOpportunities() {
        return (list<Opportunity>) setCon.getRecords();
    }    
}