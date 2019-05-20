@isTest
private class Testtrg_Account1 {
    @isTest public static void test_trg_Accoun1_trigger(){
        
        Account act = new Account(name = 'Testing purpose11111', NumOfAccountContact__c=2);
        insert act;
        
        Id aa = act.Id;
        
        Test.startTest();
        Contact c=new contact();
        c.AccountId = act.Id;
        c.LastName = 'Default11';
		insert c;
        Test.stopTest();
        
        list <contact> cnt = [select Accountid,lastname from contact where AccountId = :aa];
        system.assertEquals(cnt.size(),2);        
    }
    
}