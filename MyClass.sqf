/*
A template class.
*/

#include "..\OOP_Light\OOP_Light.h"

CLASS("MyClass", "MyClassParent")

	VARIABLE("myVariable");
	STATIC_VARIABLE("myStaticVariable");
	
	// ----------------------------------------------------------------------
	// |                              N E W                                 |
	// ----------------------------------------------------------------------
	
	METHOD("new") {
		params [["_thisObject", "", [""]]];
		
	} ENDMETHOD;
	
	// ----------------------------------------------------------------------
	// |                            D E L E T E                             |
	// ----------------------------------------------------------------------
	
	METHOD("delete") {
		params [["_thisObject", "", [""]]];
		
	} ENDMETHOD;

ENDCLASS;

SET_STATIC_VAR("MyClass", "myStaticVariable", 0);