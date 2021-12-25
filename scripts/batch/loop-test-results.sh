#!bin/bash
set +e

username='TestBenchmarker'
testsuites='UpdateTests1,ReadTests1,DeleteTests1,UseTests1,UpdateTests2'

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
    sfdx force:apex:test:run -s ${testsuites} -u $username -d test-results/apex/${runname} -r junit
    let "i++"
done
