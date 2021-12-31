mkdir -p test-results/pipeline
set +e
testSuites=(Test_Unit_Success Test_Unit_Success Test_Unit_Fails Test_Unit_Success)
finalExitCode=0
for testSuite in ${testSuites[*]}
do
    printf "Executing test suite %s ... \n" $testSuite
    printf "sfdx force:apex:test:run -w 10 -r junit -d test-results/pipeline -n $testSuite\n"
    sfdx force:apex:test:run -w 10 -r junit -d test-results/pipeline -n $testSuite
    exitCode=$?
    if [[ ! $exitCode == '0' ]]; then
        finalExitCode=$exitCode
    fi
    printf "Last exit code %s\n" $exitCode
done
printf "Final exit code %s\n" $finalExitCode
return $finalExitCode
