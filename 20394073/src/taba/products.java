/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/*
 *  Classname  employeapp.java
 * @reference employee app arraylist GUI FH
 * @author fsheridan
 *
 */
package taba;
import java.io.Serializable;

/**
 *
 * @author connd
 */
public abstract class products implements Serializable {
    protected String number ,url, description , price ,ranselect;
    
    
    public products(){
        number="";
        url="";
        description="";
        price="";
        ranselect ="";
    }

    public products(String number, String url, String description, String price, String ranselect ) {
        this.number = number;
        this.url = url;
        this.description = description;
        this.price = price;
        this.ranselect = ranselect;
    }
     public String getNumber() {
        return number;
    }
     public void setNumber(String number) {
        this.number = number;
    }
     public String getUrl() {
        return url;
    }
     public void setUrl(String url) {
        this.url = url;
    }
     public String getDescription() {
        return description;
    }
     public void setDescription(String description) {
        this.description = description;
     }
        public String getPrice() {
        return price;
    }
     public void setPrice(String price) {
        this.price = price;
    
    }
      public String getranselect() {
        return ranselect;
    }
     public void setranselect(String ranselect) {
        this.ranselect = ranselect;
    
    }

    
    
     public void printDetails(){
        System.out.println("product Details:"+number+","+url+","+description+","+price);
    }
    
    public String getDetails(){
        return "product Details:"+number+","+url+","+description+","+price ;
    }
}
    
   

    

