trigger trg_Opt1 on Opportunity (after update) {
    
    List<Task> tasklist = new List<Task>();
    for(Opportunity a : trigger.new){
        if(trigger.oldmap.get(a.Id).name != trigger.Newmap.get(a.Id).name){
          Task t = new task();
            t.Status = 'Completed';
            t.Subject='Email';
            tasklist.add(t);
        } 
    }
    insert tasklist;
    
}