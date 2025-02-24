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
    private double hours;
    private double weeklyPay;

    public FloorStaff() {
        super();
        hourlyRate = 0.0;
        hours = 0.0;
        weeklyPay = 0.0;
    }

    public FloorStaff(double hourlyRate, double hours, String name, String id, String dob) {
        super(name, id, dob);
        this.hourlyRate = hourlyRate;
        this.hours = hours;
    }

    public double getHours() {
        return hours;
    }

    public void setHours(double hours) {
        this.hours = hours;
    }

    public double getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(double hourlyRate) {
        this.hourlyRate = hourlyRate;
    }
    
    @Override
    public String getDetails(){
        return super.getDetails()+","+hourlyRate;
    }
    
    @Override
    public void computeWPay(){
        weeklyPay = hourlyRate*hours;
    }

    public double getWeeklyPay() {
        return weeklyPay;
    }
    
    
}
