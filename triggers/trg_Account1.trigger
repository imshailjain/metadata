trigger trg_Account1 on Account (after insert,after update) {  
   
    if(trigger.isafter && trigger.isinsert){
        // Function to Create a Contact once the account record is inserted with parameter how many contacts need to create
       trg_Account1.Act_CreateContactAfterInsert(trigger.new);
    }
    else if(trigger.isafter && trigger.isupdate){
        
        trg_Account1.Act_AfterUpdate(trigger.new);
        
    }
    
}