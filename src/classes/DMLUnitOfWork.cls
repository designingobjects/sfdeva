public with sharing class DMLUnitOfWork {
	
 	public static DMLUnitOfWork instance;
	
	public static DMLUnitOfWork getInstance() {
		if(instance==null) instance = new DMLUnitOfWork();
		return instance;
	}
	
	private static Map<String, DMLUnitOfWorkComponent> toInsertMap;
	private static Map<String, DMLUnitOfWorkComponent> toUpdateMap;
	private static Map<String, DMLUnitOfWorkComponent> toDeleteMap;
	
	private static Map<Integer, List<IState>> toDisableMap;
	
	public void registerNew(List<SObject> sObjs){
		registerNew(sObjs, new List<IState>());
	}

	public void registerNew(List<SObject> sObjs, List<IState> toDisables){
		if(sObjs == null || !sObjs.isEmpty())
			return;
			

	}
	
	public void registerNew(
			Map<SObject, SObject> parentToChild, Schema.sObjectField relatedToField, 
			List<IState> parentToDisables, List<IState> childToDisables){
		// todo null checks
		
		// Building parent component
		Integer parentDisablesKey = registerDisables(parentToDisables);
		DMLUnitOfWorkComponent parent = DMLUnitOfWorkComponent.build( 
				new List<SObject>(parentToChild.keySet()),
				parentToDisables);
		
		
		// Building child component
		Integer childDisablesKey = registerDisables(childToDisables);
		DMLUnitOfWorkComponent child = DMLUnitOfWorkComponent.build( 
				parentToChild.values(),
				childToDisables,
				parent);
	
	}
	
	/**
	 *	@description		Adds the list of IState instances to a static map and returns its registration key. 
	 *	@param toDisables	
	 */
	private Integer registerDisables(List<IState> toDisables) {
		Integer key = toDisableMap.size()+1;
		toDisableMap.put(key, toDisables);
		return key;
	}
	
	  
}