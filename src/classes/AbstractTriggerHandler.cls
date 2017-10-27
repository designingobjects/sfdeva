public abstract class AbstractTriggerHandler implements IHandler {
	
	public List<SObject> records;
	public Map<Id, SObject> oldRecords;
	
	//////////////////////////////
    //	IHandler methods
    //////////////////////////////
    
    
	public void execute() {
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
	abstract Boolean isBlockExecution();
    abstract void handleBeforeInsert();
    abstract void handleAfterInsert();
    abstract void handleBeforeUpdate();
    abstract void handleAfterUpdate();
    abstract void handleBeforeDelete();
    abstract void handleAfterDelete();
}