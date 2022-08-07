trigger ApplicantTrigger_sls on Applicant__c (before insert,before update,after insert,after update) {

    new ApplicantTriggerHandler_sls().run();
}