public class trg_Account1 {  
    
    public static void Act_CreateContactAfterInsert(list<Account> actNewData){    
        list<Contact> cntNewData = new list<Contact>();
        map<Id,Decimal> lstInteger = new map<Id,Decimal>();
        
        for(Account act : actNewData){
            lstInteger.put(act.id,act.NumOfAccountContact__c);
        }
        
        for(Id actid :lstInteger.keyset()){
            for(integer i=0;i<lstInteger.get(actid); i++){
                system.debug('iiiiiiiiiiiiiii-----' + i);
             	Contact c = new Contact();
                c.AccountId = actid;
                c.LastName = 'Default11' + i;
                cntNewData.add(c); 
            }            
        }        
        insert cntNewData;
    }

     public static void Act_AfterUpdate(list<Account> actUpdateData){ 
         
     }
}