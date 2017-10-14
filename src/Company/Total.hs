module Company.Total where
    import Company.Data
    total:: Company -> Float
    total = sum . salaries
        where
            salaries :: Company -> [Salary]
            salaries (_,es) = getSalaries es
                where
                    getSalaries :: [Employee] -> [Salary]
                    getSalaries [] = []
                    getSalaries (e:es) = getSalary e : getSalaries es
                        where
                            getSalary :: Employee -> Salary
                            getSalary (_,_,s) = s