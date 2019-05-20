trigger trg_Account5 on Account (before insert,before update,before delete) {    
   
    if(trigger.isbefore && trigger.isinsert){
        trg_Account5.beforeinsertVerifyAccount(trigger.new);
    }
    else if(trigger.isbefore && trigger.isdelete){
         trg_Account5.beforeDeleteVerifyAccount(trigger.old);
        
    }
    
}