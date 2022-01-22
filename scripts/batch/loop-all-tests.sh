#!bin/bash
set +e

username='TestBenchmarker'

while getopts u:n: option
do
    case "${option}" in
        u )             username=${OPTARG};;
        n )             runname=${OPTARG};;
    esac
done

i=1;
while true
do
    sfdx force:apex:test:run -u $username -d test-results/output/${runname} -r json
    let "i++"
done
