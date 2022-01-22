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
    sfdx force:apex:test:run -s ${testsuites} -u $username -d test-results/output/${runname} -r json
    let "i++"
done
