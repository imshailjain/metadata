trigger Trg1 on Opportunity (before insert,before update) {
    for(Opportunity ops: trigger.new)
    {
        if(ops.LeadSource == null)
        {
            ops.LeadSource='Other';
        }
     }    
}