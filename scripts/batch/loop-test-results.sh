#!bin/bash
set +e

username='TestBenchmarker'
testsuites='AllNonProductTests,AllProductTests'

while getopts u:s:n: option
do
    case "${option}" in
        u )             username=${OPTARG};;
        s )             testsuites=${OPTARG};;
        n )             runname=${OPTARG};;
    esac
done

i=1;
while true
do
    sfdx force:apex:test:run -s ${testsuites} -u $username -d test-results/output/${runname} -r json
    let "i++"
done
