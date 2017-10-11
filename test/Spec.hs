import Lib
import Test.HUnit
import System.Exit

factTest = 5 ~=? factorial 5
tests = 
    TestList[
        TestLabel "factorial" factTest
    ]
main = do
    counts <- runTestTT tests
    if(errors counts > 0  || failures counts > 0 )
        then exitFailure
        else exitSuccess
