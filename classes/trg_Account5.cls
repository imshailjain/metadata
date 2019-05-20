public class trg_Account5 {
    // Verify the Account name before creating to check the duplicate account name.   
    public static void beforeinsertVerifyAccount(list<Account> lstAccountNewData){
    	Set<String>sActName = new Set<String>();
        for(Account act : lstAccountNewData){
           sActName.add(act.Name);
        }
        
        List<Account>lstAct = [Select name,id from Account where name in :sActName];
      for(Account act : lstAccountNewData){
            if(lstAct.size() > 0){
                act.addError('Duplicate Account Name.');
            }
        }        
    }
	
	//Before deleting account record check whether account is associated with contact record or not.
	//If any contact is associated than it wont delete the account.   
    public static void beforeDeleteVerifyAccount(list<Account> lstAccountOldData){        
       list<Contact> lstCnt = [select Accountid from contact where accountid in :lstAccountOldData];
        for(Account act :lstAccountOldData ){
            if(lstCnt.size() > 0){
                act.addError('Couldnot Delete  Contact record is associated with Account records.');
            }            
        }               
    }
    
    
}