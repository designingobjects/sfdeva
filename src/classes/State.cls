public class State implements IState{
	
	public enum Type {
		ENABLED, 
		DISABLED
	}
	
	private Type stateType=Type.ENABLED;
	
	public State() {}
	public State(Type s) {stateType=s;}
	
	public Type getState() {
		return stateType;
	}
	
    public void setState(Type s){
    	stateType = s;
    }
    
    public void setEnabled(){
    	setState(Type.ENABLED);
    } 
    
    public void setDisabled(){ 
    	setState(Type.DISABLED);
    }
    
    public Boolean isEnabled() {
    	if(getState() == Type.ENABLED)
    		return true; 
    	return false;
    }
     
    public Boolean isDisabled() {
    	if(getState() == Type.DISABLED)
    		return true;
    	return false;
    }
}