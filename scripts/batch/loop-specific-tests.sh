#!bin/bash
set +e

username='TestBenchmarker'
testclasses='E2E_CaseEmailHandling_Test,E2E_CaseFieldPopulation_Test,E2E_ChargePilotMonitoring_Test,E2E_ChargePilotNotifications_Test,E2E_DeviceCheckAlerts_Test,E2E_DeviceCheckCases_Test,ServiceClientProfile_Test,Unit_ChargePilotController_Test,Unit_ChargePilotNotificationService_Test,Unit_ChargePilotSite_Test,Unit_ChargePilotSiteFactory_Test,Unit_CpIncidentNotificationResult_Test,Unit_DeviceCheck_Test,Unit_DeviceProcessingResult_Test,Unit_DeviceStatus_Test,Unit_DeviceStatusProcessor_Test,Unit_EmailNotification_Test,Unit_MonitoringStatusCheck_Test,Unit_MonitoringStatusProcessor_Test'
iterations=10

while getopts u:t:n:i: option
do
    case "${option}" in
        u )             username=${OPTARG};;
        t )             testclasses=${OPTARG};;
        n )             runname=${OPTARG};;
        i )             iterations=${OPTARG};;
    esac
done

i=1;
while [ $i -le $((iterations)) ]
do
    sfdx force:apex:test:run -n ${testclasses} -u $username -d test-results/output/${runname}/runs -r json
    let "i++"
done

sfdx force:data:soql:query -q "SELECT Id,AsyncApexJobId,StartTime,EndTime,Status,ClassesEnqueued,ClassesCompleted,IsAllTests,TestTime,MethodsEnqueued,MethodsCompleted,MethodsFailed FROM ApexTestRunResult WHERE Status IN ('Completed') ORDER BY StartTime DESC LIMIT $iterations" -u $username --json > test-results/output/${runname}/summary.json

