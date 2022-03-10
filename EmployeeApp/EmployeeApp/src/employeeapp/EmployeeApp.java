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
public class EmployeeApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        //Make and print an instance of Employee
        Employee e = new Employee();
        e.setName("Frances");
        e.setId("12345");
        e.setDob("12/12/99");
        System.out.println("Name:" + e.getName() + ", DOB:" + e.getDob() + ", Id:" + e.getId());

        Employee e1 = new Employee("John", "54321", "22/12/2000");
        System.out.println("Name:" + e1.getName() + ", DOB:" + e1.getDob() + ", Id:" + e1.getId());

        //make and print an instance of Manager
        Manager m = new Manager();
        m.setName("George");
        m.setId("12345B");
        m.setDob("23/3/2003");
        m.setSalary(50000);
        System.out.println("Name:" + m.getName() + ", DOB:" + m.getDob() + ", Id:" + m.getId() + ", Salary:" + m.getSalary());

        Manager m1 = new Manager(52000, "Joan", "98765B", "12/12/2001");
        System.out.println("Name:" + m1.getName() + ", DOB:" + m1.getDob() + ", Id:" + m1.getId() + ", Salary:" + m1.getSalary());

        //make and print an instance of FloorStaff
    }

}
