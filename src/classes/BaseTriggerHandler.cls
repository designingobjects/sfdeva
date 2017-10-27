public virtual class BaseTriggerHandler implements IHandler {
	
	public List<SObject> records;
	public Map<Id, SObject> oldRecords;
	
	//////////////////////////////
    //	IHandler methods
    //////////////////////////////
    
	public virtual void execute() {
		if(isBlockExecution())
			return;
			
		if (trigger.isBefore) {
	       if (trigger.isInsert) handleBeforeInsert();
	       if (trigger.isUpdate) handleBeforeUpdate();
	       if (trigger.isDelete) handleBeforeDelete();
	    }
	    if (trigger.isAfter) {
	       if (trigger.isInsert) handleAfterInsert();
	       if (trigger.isUpdate) handleAfterUpdate();
	       if (trigger.isDelete) handleAfterDelete();
	    }
	}
	
	public virtual Boolean isBlockExecution(){
		return false;
	}
	
    public virtual void handleBeforeInsert(){}
    public virtual void handleAfterInsert(){}
    public virtual void handleBeforeUpdate(){}
    public virtual void handleAfterUpdate(){}
    public virtual void handleBeforeDelete(){}
    public virtual void handleAfterDelete(){}
    
    
    
    //////////////////////////////
    //	IState methods
    //////////////////////////////
    /*
    public abstract State getState();
    public abstract void setState(State s);
    
    public void setEnabled(){
    	setState(State.ENABLED);
    }
    
    public void setDisabled(){
    	setState(State.DISABLED);
    }
    
    public Boolean isEnabled() {
    	if(getState() == State.ENABLED)
    		return true; 
    	return false;
    }
     
    public Boolean isDisabled() {
    	if(getState() == State.DISABLED)
    		return true;
    	return false;
    }  //*/
    
}