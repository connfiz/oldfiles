/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package employeeapp;

/**
 *
 * @author fsheridan
 */
public class FloorStaff extends Employee{
    private double hourlyRate;

    public FloorStaff() {
        super();
        hourlyRate = 0.0;
    }

    public FloorStaff(double hourlyRate, String name, String id, String dob) {
        super(name, id, dob);
        this.hourlyRate = hourlyRate;
    }

    public double getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(double hourlyRate) {
        this.hourlyRate = hourlyRate;
    }
    
    
    
    
}
