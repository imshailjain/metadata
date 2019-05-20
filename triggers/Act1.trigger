trigger Act1 on Account (after update) {
    
    List<Contact> cnt = [select id,name,accountid,OtherStreet from contact where accountid= :trigger.new] ;   
    List<Contact> cntupdate = new List<Contact>();
    for(Account a : trigger.new){
        if(trigger.oldmap.get(a.Id).BillingStreet != a.BillingStreet){
            for(Contact c : cnt){
                c.OtherStreet = a.BillingStreet;
                cntupdate.add(c);
            }         
        } 
    }
    if(cntupdate.size() >0){
        update cntupdate;
    }

}