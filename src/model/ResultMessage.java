package model;

public enum ResultMessage {
	//member state
	EXIST,NOTEXIST,
	
	//operation
	SUCCEED,FAILED,
	
	//identity
	manager,waiter,member,
	
	//member state
	nonactivated,suspend,activated,stop,
	
	//register password
	EQUAL,UNEQUAL,
	
}
