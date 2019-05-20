public with sharing class Standard_Ext_1_Apex {

    public Standard_Ext_1_Apex(test11 controller) {

    }

    public Standard_Ext_1_Apex(ApexPages.StandardController controller) {

    }

  public List<account> searchResults {get;set;}
  public string searchText{get;set;}
    
    
  public PageReference search() {
        String qry = 'select  Name,billingstate,phone,website from account '+' where name LIKE \'%'+searchText+'%\' order by name '; 
        searchResults = Database.query(qry);
         if (searchResults.size() == 0){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Warning,'No Accounts Found with Account name as :'+searchText));
            }
    return null; 
  }
}