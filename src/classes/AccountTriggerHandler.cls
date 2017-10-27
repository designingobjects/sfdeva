public with sharing class AccountTriggerHandler extends AbstractTriggerHandler {

	private static State triggerState = State.ENABLED;
	public override State getState(){
		return AccountTriggerHandler.triggerState;
	}
	public override void setState(State s){
		AccountTriggerHandler.triggerState = s;
	}
	
	private void handleBeforeInsert(){} 
    private void handleAfterInsert(){} 
    private void handleBeforeUpdate(){} 
    private void handleAfterUpdate(){}
    private void handleBeforeDelete(){}
    private void handleAfterDelete(){}
    
   
    
}