public class Controller_1_1_Apex {
    List<Account> r_acts;
    List<Account> acts =  [SELECT name,type,industry,phone,ownerid FROM Account ];           
  
    public List<Account> getacts(){
            return acts;
    }
     public List<Account> getracts(){
            return r_acts ;
    }
  
    public PageReference direct(){
        acts =  [SELECT name,type,industry,phone,ownerid FROM Account WHERE Type ='Customer - Direct']; 
        return null;
    }
    public PageReference channel(){
           acts =  [SELECT name,type,industry,phone,ownerid FROM Account WHERE Type = 'Customer - Channel'];       
           return null;
    }
  
    public pagereference racts1(){
    	r_acts =[SELECT  name,type,industry,phone,ownerid FROM Account WHERE Industry =: ApexPages.CurrentPage().getParameters().get('aindustry') ];
    	return null;
    }
}