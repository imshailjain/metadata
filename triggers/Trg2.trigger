trigger Trg2 on Account (before insert) {
    Set<String> accNamesSet = new Set<String>();
    for(Account a : trigger.new){
        accNamesSet.add(a.name);
    }
    List<Contact> conList = [select id,name from Contact where name in : accNamesSet];
    if(conList.size() > 0 && conList != null){
        //DELETE conList;
         
        //System.Debug();
    }        
}