trigger trg_Account2 on Account (after update) {    
// Trigger to update the 
    Integer[] updatedContacts = new Integer[0];
    list<Account> a1 = new list<Account>();
    
    if(RecursiveTriggerHandler.isFirstTime){
        RecursiveTriggerHandler.isFirstTime = false;
    
        Set<ID>actid = new Set<ID>();
        for(Account a : trigger.new){
            actid.add(a.Id);
        }
        
         list<Contact> c1 = [select id,name,accountid,Mailingpostalcode from contact where accountid= :actid];
        integer i=1;
        for(Contact c :c1){
             account a = trigger.newmap.get(c.accountid);
            if(c.MailingPostalCode != a.BillingPostalCode){
                updatedContacts.add(i);
                i=i+1;            
            }
        }
        if(updatedContacts.size() >=1){
        	for(Account a : trigger.new){
                    Account aux= new Account(Id=a.Id);       
                    aux.Out_of_Zip__c = True;
                    a1.add(aux);            
           }
        	update a1;        
         }
        
    }
   }