import Company.Total
import Company.Data
import Test.HUnit
import System.Exit


sampleCompany :: Company
sampleCompany = ("DB", [("Kuldeep","Amanora",125.0),("Aman","Amanora",123.0)])

totalTest = 248.0 ~=? total(sampleCompany)
tests = 
    TestList[
        TestLabel "Total" totalTest
    ]
main = do
    counts <- runTestTT tests
    if(errors counts > 0  || failures counts > 0 )
        then exitFailure
        else exitSuccess
