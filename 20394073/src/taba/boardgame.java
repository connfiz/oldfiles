/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
/*
 *  Classname  employeapp.java
 * @reference employee app arraylist GUI FH
 * @author fsheridan
 *
 */

package taba;

/**
 *
 * @author connd
 */
public class boardgame extends products {
    private String  name;
    private String publisher;
    
    public boardgame(){
        super();
        name="";
        publisher="";
    }
    public boardgame(String publisher,String name, String number,String url, String description, String price,String ranselect) {
        super(number, url, description, price,ranselect);
        this.name = name;
        this.publisher = publisher;
    }
    public String getName() {
        return name;
    }
     public void setName(String name) {
        this.name = name;
    }
     
     public String getPublisher() {
        return publisher;
    }
     public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    @Override
  public String getDetails(){
        return super.getDetails()+","+name+","+publisher;
    }
}
    
