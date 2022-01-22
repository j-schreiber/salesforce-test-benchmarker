# Commands

## Execute tests

```shell
# execute single run
sfdx force:apex:test:run -w 10 -s AllProductTests,AllNonProductTests

# execute in a loop
zsh scripts/batch/loop-test-results.sh -n test-run-name -s TestSuiteName1,TestSuiteName2
```

## Retrieve test results

```shell
# retrieve specific ids
sfdx force:data:soql:query -q "SELECT Id, AsyncApexJobId ,StartTime, EndTime, Status, ClassesEnqueued, ClassesCompleted, IsAllTests, TestTime, MethodsEnqueued, MethodsCompleted, MethodsFailed FROM ApexTestRunResult WHERE Status IN ('Completed','Processing') AND AsyncApexJobId IN ('7077a00002uGPWSAA4','7077a00002uGQU8AAO','7077a00002uOqRjAAK','7077a00002uPK8PAAW','7077a00002uPKoOAAW','7077a00002uPLYUAA4','7077a00002uPM3fAAG','7077a00002uPMx3AAG','7077a00002uPNgyAAG','7077a00002uPORFAA4') ORDER BY StartTime DESC LIMIT 10" -u TestBenchmarker2 --json > test-run-results.json

# retrieve the last 10 runs
sfdx force:data:soql:query -q "SELECT Id, AsyncApexJobId ,StartTime, EndTime, Status, ClassesEnqueued, ClassesCompleted, IsAllTests, TestTime, MethodsEnqueued, MethodsCompleted, MethodsFailed FROM ApexTestRunResult WHERE Status IN ('Completed','Processing') ORDER BY StartTime DESC LIMIT 10" -u TestBenchmarker2 --json > test-run-results.json
```

Does order of tests matter?
-> AllNonProductTests,AllProductTests vs. AllProductTests,AllNonProductTests
