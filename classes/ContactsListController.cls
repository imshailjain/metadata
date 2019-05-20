public class ContactsListController {
    private String sortOrder = 'LastName';
    public List<Contact> getContactDetail(){
        List<Contact> results = Database.query('Select id, FirstName, LastName,Title,Email from Contact order by '+ sortOrder + ' ASC limit 10');
                
        return results;
    }
    public void sortByLastName() {
    	this.sortOrder = 'LastName';
	}
    
    public void sortByFirstName() {
        this.sortOrder = 'FirstName';
    }    
}