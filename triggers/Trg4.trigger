trigger Trg4 on Account (after insert) {
 
     
    for(Account a : trigger.new){
        Contact c = new Contact();
        c.LastName = 'Default content';
      }
     
 
}