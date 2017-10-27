public with sharing class ContactTriggerHandler extends BaseTriggerHandler {
	
	private static State intState;
	
	{
		if( KillSwitchUtil.isOrgDisableTrigger() )
			intState = new State(State.Type.DISABLED);
		else
			intState = new State();
	}
	
	public override Boolean isBlockExecution(){
		return intState.isDisabled();
	}
    
}