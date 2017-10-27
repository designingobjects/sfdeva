public class DMLUnitOfWorkComponent {
    public Schema.SObjectType sObjType;
	public List<SObject> sObjs = new List<Sobject>();
	public Map<Id, SObject> sObjsMap  = new Map<Id, SObject>();
	public List<IState> toDisable = new List<IState>();

	
	
	
	public static DMLUnitOfWorkComponent build( List<SObject> sObjs, List<IState> toDisable ){
		DMLUnitOfWorkComponent component = new DMLUnitOfWorkComponent();
		if(sObjs != null) {
			component.sObjType = sObjs.getSObjectType();
			component.sObjs = sObjs;
		}
		if(toDisable != null) {
			component.toDisable = toDisable;
		}
		return component;
	}

}