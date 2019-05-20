public class NewCaseListController {
    private string statvalu = 'New';
    public List<Case> getNewCases(){
        List<Case> lstCases = Database.query('select id,casenumber,status from case where status= :statvalu');
        return  lstCases;       
    }
}