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

/**
 *
 * @author connd
 */
public class clothing extends products {
    private String type;
    private String size;
    private String colour;

    public clothing() {
        super();
        type ="";
        size = "";
        colour="";
    }

    public clothing(String type ,String size,String colour,String number,String url, String description, String price,String ranselect) {
        super(number, url, description, price,ranselect);
        this.type = type;
        this.size = size;
        this.colour = colour;
    }

    public clothing(String type, String size, String colour) {
        this.type = type;
        this.size = size;
        this.colour = colour;
    }
    
    

    public String gettype() {
        return type;
    }

    public void settype(String type) {
        this.type = type;
    }
    
    public String getsize() {
        return size;
    }

    public void setsize(String size) {
        this.size = size;
    }
    public String getcolour() {
        return colour;
    }

    public void setcolour(String colour) {
        this.colour = colour;
    }
    @Override
  public String getDetails(){
        return super.getDetails()+","+colour+","+size+","+type;
    }
}