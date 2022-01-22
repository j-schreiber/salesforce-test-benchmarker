#!bin/bash
set +e

username='TestBenchmarker'
testsuites='Parallelization'
iterations=10

while getopts u:s:n:i: option
do
    case "${option}" in
        u )             username=${OPTARG};;
        s )             testsuites=${OPTARG};;
        n )             runname=${OPTARG};;
        i )             iterations=${OPTARG};;
    esac
done

i=1;
while [ $i -le $((iterations)) ]
do
    sfdx force:apex:test:run -s ${testsuites} -u $username -d test-results/output/${runname}/runs -r json
    let "i++"
done

rm test-results/output/${runname}/runs/*.xml
rm test-results/output/${runname}/runs/test-run-id.txt

sfdx force:data:soql:query -q "SELECT Id,AsyncApexJobId,StartTime,EndTime,Status,ClassesEnqueued,ClassesCompleted,IsAllTests,TestTime,MethodsEnqueued,MethodsCompleted,MethodsFailed FROM ApexTestRunResult WHERE Status IN ('Completed') ORDER BY StartTime DESC LIMIT $iterations" -u $username --json > test-results/output/${runname}/summary.json

