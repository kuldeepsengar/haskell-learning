module Company.Data where
    type Company = (Name,[Employee])
    type Employee = (Name, Address, Salary)
    type Name = String
    type Address = String
    type Salary = Float
    