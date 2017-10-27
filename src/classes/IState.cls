public interface IState {
	
	State.Type getState();
	void setState(State.Type s);
	
	void setEnabled();
	void setDisabled();
	
	Boolean isEnabled();
	Boolean isDisabled();
}