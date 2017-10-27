public with sharing class KillSwitchUtil {

	/**
	 *	@description
	 *	Returns the system-wide configuration related to execution of triggers. 
	 */
	public static Boolean isOrgDisableTrigger() {
        return Kill_Switch__c.getOrgDefaults().Disable_Triggers__c;
    }
    
    /**
	 *	@description
	 *	Returns the user-specific system-wide configuration related to execution of triggers. 
	 */
    public static Boolean isDisableTrigger() {
        return Kill_Switch__c.getInstance() == null 
        		? KillSwitchUtil.isOrgDisableTrigger()
        		: Kill_Switch__c.getInstance().Disable_Triggers__c ;
    }       
}