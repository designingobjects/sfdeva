public with sharing class DMLSingleton implements ISingleton {
	
	public static DMLSingleton instance;
	
	public static ISingleton getInstance() {
		if(instance==null) instance = new DMLSingleton();
		return instance;
	}
	
	private static Map<String, DMLSingletonComponent> toInsertMap;
	private static Map<String, DMLSingletonComponent> toUpdateMap;
	private static Map<String, DMLSingletonComponent> toDeleteMap;
	
	private static Map<String, List<IState>> toDisableMap;
	
	public class DMLSingletonComponent {
		Schema.SObjectType sObjType;
		List<SObject> sObjs;
		Map<Id, SObject> sObjsMap;
		List<IState> toDisable;
		//Relationship blah blah
	}
	
	public void registerNew(List<SObject> sObjs){
		registerNew(sObjs, new List<IState>());
	}

	public void registerNew(List<SObject> sObjs, List<IState> toDisables){
		
	}
	
	public void registerNew(Map<SObject, SObject> sObjs){
		
	}
	
    
}