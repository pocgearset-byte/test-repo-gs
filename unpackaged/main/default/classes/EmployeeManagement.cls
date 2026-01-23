public class EmployeeManagement {
    
    // Inner class to represent an Employee
    public class Employee {
        public String name;
        public String id;
        public String department;

        public Employee(String name, String id, String department) {
            this.name = name;
            this.id = id;
            this.department = department;
        }
    }

    // A static list to hold employee records
    private static List<Employee> employeeRecords = new List<Employee>();

    // Method to add a new employee
    public static void addEmployee(String name, String id, String department) {
        Employee newEmployee = new Employee(name, id, department);
        employeeRecords.add(newEmployee);
    }

    // Method to retrieve all employees
    public static List<Employee> getAllEmployees() {
        return employeeRecords;
    }

    // Method to delete an employee by ID
    public static void deleteEmployee(String id) {
        for (Integer i = employeeRecords.size() - 1; i >= 0; i--) {
            if (employeeRecords[i].id == id) {
                employeeRecords.remove(i);
                break;
            }
        }
    }
}