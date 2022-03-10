/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
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
public class craftSupplies extends products {
    private String type;
    private String brand;
    private String colour;

    public craftSupplies() {
        super();
        type ="";
        brand = "";
        colour="";
    }

    public craftSupplies(String type,String brand,String colour,String number,String url, String description, String price, String ranselect) {
        super(number, url, description, price,ranselect);
        this.type = type;
        this.brand = brand;
        this.colour = colour;
    }
    
    

    public String gettype() {
        return type;
    }

    public void settype(String type) {
        this.type = type;
    }
    
    public String getbrand() {
        return brand;
    }

    public void setbrand(String brand) {
        this.brand = brand;
    }
    public String getcolour() {
        return colour;
    }

    public void setcolour(String colour) {
        this.colour = colour;
    
    }
    @Override
  public String getDetails(){
        return super.getDetails()+","+colour+","+brand+","+type;
    }
}

 