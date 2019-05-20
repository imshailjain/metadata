public class cCDMA_PASSPARAM_1_1{

    public list<String> LstParameters{get;set;}
    public cCDMA_PASSPARAM_1_1(){
        String TextValue = ApexPages.currentPage().getParameters().get('Textvalue');
        String NumberValue=ApexPages.currentPage().getParameters().get('NumberValue');
        
        LstParameters = new  list<String>();
        LstParameters.add(TextValue);
        LstParameters.add(NumberValue);
    
    }

}