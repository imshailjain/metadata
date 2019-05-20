trigger Trg3 on Opportunity (after update) {
    list<Opps_child__c> oppchild = new list<Opps_child__c>();
    for(Opportunity o : trigger.new){
        if(trigger.oldmap.get(o.Id).stagename != 'Closed Won' && o.stagename == 'Closed Won'){
            Opps_child__c oc = new Opps_child__c();
            oc.name = o.name;
            oc.Opportunity__c=o.Id;
            oppchild.add(oc);   
        }
      }
    insert oppchild;
}