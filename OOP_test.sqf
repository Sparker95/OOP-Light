#include "OOP_Light\OOP_Light.h"

// ==== End of defines ====
diag_log ">> End of defines";

CLASS("Vehicle", "")
	
	VARIABLE("pos");
	VARIABLE("velocity");
	STATIC_VARIABLE("factory");
	
	METHOD("setPos")
	{
		params ["_thisObject", "_newPos"];
		diag_log format ["setPos was called on %1! New pos: %2", _thisObject, _newPos];
		SET_MEM(_thisObject, "pos", _newPos);
	} ENDMETHOD;
	
	
	METHOD("getPos")
	{
		params ["_thisObject"];
		//diag_log format ["getPos was called on %1!", _thisObject];
		GET_MEM(_thisObject, "pos");
	} ENDMETHOD;
	
	METHOD("new") {
		params["_thisObject"];
		diag_log format ["Vehicle: constructor: %1", _thisObject];
		private _pos = [10, 11, 12];
		SET_MEM(_thisObject, "pos", _pos);
		SET_MEM(_thisObject, "velocity", 100);
	} ENDMETHOD;
	
	METHOD("delete") {
		params["_thisObject"];
		diag_log format ["Vehicle: destructor: %1", _thisObject];
	} ENDMETHOD;

ENDCLASS;


// Test class inheritance
CLASS("Ground", "Vehicle")

	METHOD("new") {
		params["_thisObject"];
		diag_log "Ground: constructor";
	} ENDMETHOD;
	
	METHOD("delete") {
		params["_thisObject"];
		diag_log format ["Ground: destructor: %1", _thisObject];
	} ENDMETHOD;
	
ENDCLASS;

CLASS("Car", "Ground")

	VARIABLE("wheelType");
	
	VARIABLE("wheelAmount");
	
	METHOD("new") {
		params["_thisObject"];
		diag_log "Car: constructor";
	} ENDMETHOD;
	
	METHOD("delete") {
		params["_thisObject"];
		diag_log format ["Car: destructor: %1", _thisObject];
	} ENDMETHOD;
	
ENDCLASS;

CLASS("Offroad", "Car")

	VARIABLE("cargoType");
	
	METHOD("new") {
		params["_thisObject"];
		diag_log "Offroad: constructor";
		SET_MEM(_thisObject, "cargoType", "open")
	} ENDMETHOD;
	
	METHOD("delete") {
		params["_thisObject"];
		diag_log format ["Offroad: destructor: %1", _thisObject];
	} ENDMETHOD;
	
ENDCLASS;


// T E S T I N G
//Try to create a few objects
private _veh0 = NEW("Vehicle", []);
diag_log format [">> _veh0: %1", _veh0];
private _veh1 = NEW("Vehicle", []);
diag_log format [">> _veh1: %1", _veh1];

CALL_METHOD(_veh0, "setPos", [666]);
private _pos = CALL_METHOD(_veh0, "getPos", []);
diag_log format [">> _veh0 returned pos: %1", _pos];

SET_MEM(_veh0, "pos", 6);
SET_MEM(_veh0, "speed", 6); //should fail: unknown member
SET_STATIC_MEM("vehicle", "factory", 33);
SET_STATIC_MEM("vehicle", "amount", 2); //should fail: unknown member
SET_STATIC_MEM("vehicle123", "factory", 2);

//Should fail: unknown class
CLASS("Boat", "Water")
ENDCLASS;

CLASS("Air", "Vehicle")
ENDCLASS;

//Create extra objects
private _offroad0 = NEW("Offroad", []);
private _offroad1 = NEW("Offroad", []);
DELETE(_offroad1);