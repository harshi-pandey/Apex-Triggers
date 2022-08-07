public with sharing class ApplicantTriggerHandler_sls extends TriggerHandler {
    
    public Map<Id, Account> oldAccountMap;

    public ApplicantTriggerHandler_sls(){
        this.oldAccountMap = (Map<Id, Account>) Trigger.oldMap;
    }

    public override void afterInsert(){

    }
    
    public override void beforeUpdate(){         
        for(Applicant__c applcnt : (List<Applicant__c>) Trigger.new){
            if(((Applicant__c)Trigger.OldMap.get(applcnt.Id)).Name == 'xxx'){
                
            }
            else if(((Applicant__c)Trigger.NewMap.get(applcnt.Id)).Name == 'xxx' ){

            }
        }
    }

    public override void afterUpdate(){         
        // for(Loan__c loan : [SELECT Id, Name, Lead__c, SchemeMaster__c FROM Loan__c WHERE ID IN :Trigger.newMap.keyset()]) 
        //  { 
        //      Lead__c newLead = new Lead__c();
        //      if(loan.SchemeMaster__c !=null){
        //          newLead.Id = loan.Lead__c;
        //          newLead.SchemeMaster__c = loan.SchemeMaster__c;
        //          leadList.add(newLead);
        //      }  
        //      else{
        //         System.debug('Scheme Master is null or Same');
        //      }
        //  }        
        // if(leadList.size()>0){
        //     System.debug('Lead List :: ' + leadList);
        //     SObjectAccessDecision accessDecision = Security.stripInaccessible(AccessType.UPDATABLE,leadList); 
        //     update accessDecision.getRecords();  
        // }
    }
}
