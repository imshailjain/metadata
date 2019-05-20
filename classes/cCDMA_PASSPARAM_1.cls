public class cCDMA_PASSPARAM_1 {

    public PageReference PassPrmNow() {
    
        PageReference px = Page.cCDMA_PASSPARAM_1_1;
        
        px.getParameters().put('TextValue',TextValue );
        px.getParameters().put('NumberValue',String.Valueof(NumberValue));    
        
        px.setRedirect(true);
        return px;
    }

    public String TextValue {get;set;}
    public Integer NumberValue {get;set;}
   
    
}