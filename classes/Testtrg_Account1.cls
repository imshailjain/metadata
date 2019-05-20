@isTest
private class Testtrg_Account1 {
    @isTest public static void test_trg_Accoun1_trigger(){
        
        Account a = new Account(name = 'Testing purpose111', NumOfAccountContact__c=1);
        insert a;
        Id aa = a.Id;
        
        Test.startTest();
        Contact c=new contact();
        c.AccountId = a.Id;
        c.LastName = 'Default11';
		insert c;
        Test.stopTest();
        
        list <contact> cnt = [select Accountid,lastname from contact where AccountId = :aa];
        system.assertEquals(cnt.size(),1);        
    }
    
}