{#line 1 "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf"
#line 1 "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_Light\OOP_Light.h"













































































































































































































































#line 1 "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf"



diag_log ">> End of defines";

[] call { scopeName "scopeClass"; private _oop_classNameStr = "Vehicle"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "nextID"),  0]; private _oop_memList = []; private _oop_staticMemList = []; private _oop_parents = []; if ( "" != "") then { 	if (!([ "", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 6] call OOP_assert_class)) then {breakOut "scopeClass";}; 	_oop_parents = +( missionNameSpace getVariable ("o_" +  "" + "_spm_" +   "parents") ); _oop_parents pushBackUnique  ""; 	_oop_memList = +( missionNameSpace getVariable ("o_" +  "" + "_spm_" +   "memList") ); 	_oop_staticMemList = +( missionNameSpace getVariable ("o_" +  "" + "_spm_" +   "staticMemList") ); 	private _oop_topParent = _oop_parents select ((count _oop_parents) - 1); 	{ private _oop_methodCode = ( missionNameSpace getVariable ("o_" + _oop_topParent + "_stm_" +   _x) ); missionNameSpace setVariable [("o_" + "Vehicle" + "_stm_" +   _x),  _oop_methodCode]; 	} forEach (_oop_staticMemList - ["new", "delete", "copy"]); }; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "parents"),  _oop_parents]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "memList"),  _oop_memList]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "staticMemList"),  _oop_staticMemList]; _oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {} ]; _oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {} ]; _oop_staticMemList pushBackUnique "copy"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "copy"), {} ]; _oop_memList pushBackUnique "oop_parent";

_oop_memList pushBackUnique "pos";
_oop_memList pushBackUnique "velocity";
_oop_staticMemList pushBackUnique "factory";

_oop_staticMemList pushBackUnique "setPos"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "setPos"),
{
params ["_thisObject", "_newPos"];
diag_log format ["setPos was called on %1! New pos: %2", _thisObject, _newPos];
if([_thisObject,  "pos", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 15] call OOP_assert_member) then {missionNameSpace setVariable [(_thisObject + "_" +    "pos"),   _newPos]};
} ];


_oop_staticMemList pushBackUnique "getPos"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "getPos"),
{
params ["_thisObject"];

( if([_thisObject,  "pos", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 23] call OOP_assert_member) then {( missionNameSpace getVariable (_thisObject + "_" +    "pos") )}else{nil} );
} ];

_oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {
params["_thisObject"];
diag_log format ["Vehicle: constructor: %1", _thisObject];
private _pos = [10, 11, 12];
if([_thisObject,  "pos", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 30] call OOP_assert_member) then {missionNameSpace setVariable [(_thisObject + "_" +    "pos"),   _pos]};
if([_thisObject,  "velocity", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 31] call OOP_assert_member) then {missionNameSpace setVariable [(_thisObject + "_" +    "velocity"),   100]};
} ];

_oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {
params["_thisObject"];
diag_log format ["Vehicle: destructor: %1", _thisObject];
} ];

};



[] call { scopeName "scopeClass"; private _oop_classNameStr = "Ground"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "nextID"),  0]; private _oop_memList = []; private _oop_staticMemList = []; private _oop_parents = []; if ( "Vehicle" != "") then { 	if (!([ "Vehicle", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 44] call OOP_assert_class)) then {breakOut "scopeClass";}; 	_oop_parents = +( missionNameSpace getVariable ("o_" +  "Vehicle" + "_spm_" +   "parents") ); _oop_parents pushBackUnique  "Vehicle"; 	_oop_memList = +( missionNameSpace getVariable ("o_" +  "Vehicle" + "_spm_" +   "memList") ); 	_oop_staticMemList = +( missionNameSpace getVariable ("o_" +  "Vehicle" + "_spm_" +   "staticMemList") ); 	private _oop_topParent = _oop_parents select ((count _oop_parents) - 1); 	{ private _oop_methodCode = ( missionNameSpace getVariable ("o_" + _oop_topParent + "_stm_" +   _x) ); missionNameSpace setVariable [("o_" + "Ground" + "_stm_" +   _x),  _oop_methodCode]; 	} forEach (_oop_staticMemList - ["new", "delete", "copy"]); }; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "parents"),  _oop_parents]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "memList"),  _oop_memList]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "staticMemList"),  _oop_staticMemList]; _oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {} ]; _oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {} ]; _oop_staticMemList pushBackUnique "copy"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "copy"), {} ]; _oop_memList pushBackUnique "oop_parent";

_oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {
params["_thisObject"];
diag_log "Ground: constructor";
} ];

_oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {
params["_thisObject"];
diag_log format ["Ground: destructor: %1", _thisObject];
} ];

};

[] call { scopeName "scopeClass"; private _oop_classNameStr = "Car"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "nextID"),  0]; private _oop_memList = []; private _oop_staticMemList = []; private _oop_parents = []; if ( "Ground" != "") then { 	if (!([ "Ground", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 58] call OOP_assert_class)) then {breakOut "scopeClass";}; 	_oop_parents = +( missionNameSpace getVariable ("o_" +  "Ground" + "_spm_" +   "parents") ); _oop_parents pushBackUnique  "Ground"; 	_oop_memList = +( missionNameSpace getVariable ("o_" +  "Ground" + "_spm_" +   "memList") ); 	_oop_staticMemList = +( missionNameSpace getVariable ("o_" +  "Ground" + "_spm_" +   "staticMemList") ); 	private _oop_topParent = _oop_parents select ((count _oop_parents) - 1); 	{ private _oop_methodCode = ( missionNameSpace getVariable ("o_" + _oop_topParent + "_stm_" +   _x) ); missionNameSpace setVariable [("o_" + "Car" + "_stm_" +   _x),  _oop_methodCode]; 	} forEach (_oop_staticMemList - ["new", "delete", "copy"]); }; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "parents"),  _oop_parents]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "memList"),  _oop_memList]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "staticMemList"),  _oop_staticMemList]; _oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {} ]; _oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {} ]; _oop_staticMemList pushBackUnique "copy"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "copy"), {} ]; _oop_memList pushBackUnique "oop_parent";

_oop_memList pushBackUnique "wheelType";

_oop_memList pushBackUnique "wheelAmount";

_oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {
params["_thisObject"];
diag_log "Car: constructor";
} ];

_oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {
params["_thisObject"];
diag_log format ["Car: destructor: %1", _thisObject];
} ];

};

[] call { scopeName "scopeClass"; private _oop_classNameStr = "Offroad"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "nextID"),  0]; private _oop_memList = []; private _oop_staticMemList = []; private _oop_parents = []; if ( "Car" != "") then { 	if (!([ "Car", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 76] call OOP_assert_class)) then {breakOut "scopeClass";}; 	_oop_parents = +( missionNameSpace getVariable ("o_" +  "Car" + "_spm_" +   "parents") ); _oop_parents pushBackUnique  "Car"; 	_oop_memList = +( missionNameSpace getVariable ("o_" +  "Car" + "_spm_" +   "memList") ); 	_oop_staticMemList = +( missionNameSpace getVariable ("o_" +  "Car" + "_spm_" +   "staticMemList") ); 	private _oop_topParent = _oop_parents select ((count _oop_parents) - 1); 	{ private _oop_methodCode = ( missionNameSpace getVariable ("o_" + _oop_topParent + "_stm_" +   _x) ); missionNameSpace setVariable [("o_" + "Offroad" + "_stm_" +   _x),  _oop_methodCode]; 	} forEach (_oop_staticMemList - ["new", "delete", "copy"]); }; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "parents"),  _oop_parents]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "memList"),  _oop_memList]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "staticMemList"),  _oop_staticMemList]; _oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {} ]; _oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {} ]; _oop_staticMemList pushBackUnique "copy"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "copy"), {} ]; _oop_memList pushBackUnique "oop_parent";

_oop_memList pushBackUnique "cargoType";

_oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {
params["_thisObject"];
diag_log "Offroad: constructor";
if([_thisObject,  "cargoType", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 83] call OOP_assert_member) then {missionNameSpace setVariable [(_thisObject + "_" +    "cargoType"),   "open"]}
} ];

_oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {
params["_thisObject"];
diag_log format ["Offroad: destructor: %1", _thisObject];
} ];

};




private _veh0 = [] call { if (!(["Vehicle", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 95] call OOP_assert_class)) exitWith {format ["ERROR_NO_CLASS_%1", "Vehicle"]}; private _oop_nextID = ( missionNameSpace getVariable ("o_" + "Vehicle" + "_spm_" +   "nextID") ); missionNameSpace setVariable [("o_" + "Vehicle" + "_spm_" +   "nextID"),  _oop_nextID+1]; private _objNameStr = ("o_" + "Vehicle" + "_N_" + (format ["%1",  _oop_nextID])); missionNameSpace setVariable [(_objNameStr + "_" +   "oop_parent"),  "Vehicle"]; private _oop_parents = ( missionNameSpace getVariable ("o_" + "Vehicle" + "_spm_" +   "parents") ); private _oop_i = 0; private _oop_parentCount = count _oop_parents; while {_oop_i < _oop_parentCount} do { 	([_objNameStr] +  []) call ( if([(_oop_parents select _oop_i),  "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 95] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (_oop_parents select _oop_i) + "_stm_" +    "new") )}else{nil} ); 	_oop_i = _oop_i + 1; }; ([_objNameStr] +   []) call ( if([(( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )),   "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 95] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )) + "_stm_" +     "new") )}else{nil} ); _objNameStr };
diag_log format [">> _veh0: %1", _veh0];
private _veh1 = [] call { if (!(["Vehicle", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 97] call OOP_assert_class)) exitWith {format ["ERROR_NO_CLASS_%1", "Vehicle"]}; private _oop_nextID = ( missionNameSpace getVariable ("o_" + "Vehicle" + "_spm_" +   "nextID") ); missionNameSpace setVariable [("o_" + "Vehicle" + "_spm_" +   "nextID"),  _oop_nextID+1]; private _objNameStr = ("o_" + "Vehicle" + "_N_" + (format ["%1",  _oop_nextID])); missionNameSpace setVariable [(_objNameStr + "_" +   "oop_parent"),  "Vehicle"]; private _oop_parents = ( missionNameSpace getVariable ("o_" + "Vehicle" + "_spm_" +   "parents") ); private _oop_i = 0; private _oop_parentCount = count _oop_parents; while {_oop_i < _oop_parentCount} do { 	([_objNameStr] +  []) call ( if([(_oop_parents select _oop_i),  "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 97] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (_oop_parents select _oop_i) + "_stm_" +    "new") )}else{nil} ); 	_oop_i = _oop_i + 1; }; ([_objNameStr] +   []) call ( if([(( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )),   "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 97] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )) + "_stm_" +     "new") )}else{nil} ); _objNameStr };
diag_log format [">> _veh1: %1", _veh1];

([_veh0] +  [666]) call ( if([(( missionNameSpace getVariable (_veh0 + "_" +   "oop_parent") )),   "setPos", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 100] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (( missionNameSpace getVariable (_veh0 + "_" +   "oop_parent") )) + "_stm_" +     "setPos") )}else{nil} );
private _pos = ([_veh0] +  []) call ( if([(( missionNameSpace getVariable (_veh0 + "_" +   "oop_parent") )),   "getPos", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 101] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (( missionNameSpace getVariable (_veh0 + "_" +   "oop_parent") )) + "_stm_" +     "getPos") )}else{nil} );
diag_log format [">> _veh0 returned pos: %1", _pos];

if([_veh0,  "pos", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 104] call OOP_assert_member) then {missionNameSpace setVariable [(_veh0 + "_" +    "pos"),   6]};
if([_veh0,  "speed", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 105] call OOP_assert_member) then {missionNameSpace setVariable [(_veh0 + "_" +    "speed"),   6]}; 
if(["vehicle",  "factory", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 106] call OOP_assert_staticMember) then {missionNameSpace setVariable [("o_" + "vehicle" + "_stm_" +    "factory"),   33]};
if(["vehicle",  "amount", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 107] call OOP_assert_staticMember) then {missionNameSpace setVariable [("o_" + "vehicle" + "_stm_" +    "amount"),   2]}; 
if(["vehicle123",  "factory", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 108] call OOP_assert_staticMember) then {missionNameSpace setVariable [("o_" + "vehicle123" + "_stm_" +    "factory"),   2]};


[] call { scopeName "scopeClass"; private _oop_classNameStr = "Boat"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "nextID"),  0]; private _oop_memList = []; private _oop_staticMemList = []; private _oop_parents = []; if ( "Water" != "") then { 	if (!([ "Water", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 112] call OOP_assert_class)) then {breakOut "scopeClass";}; 	_oop_parents = +( missionNameSpace getVariable ("o_" +  "Water" + "_spm_" +   "parents") ); _oop_parents pushBackUnique  "Water"; 	_oop_memList = +( missionNameSpace getVariable ("o_" +  "Water" + "_spm_" +   "memList") ); 	_oop_staticMemList = +( missionNameSpace getVariable ("o_" +  "Water" + "_spm_" +   "staticMemList") ); 	private _oop_topParent = _oop_parents select ((count _oop_parents) - 1); 	{ private _oop_methodCode = ( missionNameSpace getVariable ("o_" + _oop_topParent + "_stm_" +   _x) ); missionNameSpace setVariable [("o_" + "Boat" + "_stm_" +   _x),  _oop_methodCode]; 	} forEach (_oop_staticMemList - ["new", "delete", "copy"]); }; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "parents"),  _oop_parents]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "memList"),  _oop_memList]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "staticMemList"),  _oop_staticMemList]; _oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {} ]; _oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {} ]; _oop_staticMemList pushBackUnique "copy"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "copy"), {} ]; _oop_memList pushBackUnique "oop_parent";
};

[] call { scopeName "scopeClass"; private _oop_classNameStr = "Air"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "nextID"),  0]; private _oop_memList = []; private _oop_staticMemList = []; private _oop_parents = []; if ( "Vehicle" != "") then { 	if (!([ "Vehicle", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 115] call OOP_assert_class)) then {breakOut "scopeClass";}; 	_oop_parents = +( missionNameSpace getVariable ("o_" +  "Vehicle" + "_spm_" +   "parents") ); _oop_parents pushBackUnique  "Vehicle"; 	_oop_memList = +( missionNameSpace getVariable ("o_" +  "Vehicle" + "_spm_" +   "memList") ); 	_oop_staticMemList = +( missionNameSpace getVariable ("o_" +  "Vehicle" + "_spm_" +   "staticMemList") ); 	private _oop_topParent = _oop_parents select ((count _oop_parents) - 1); 	{ private _oop_methodCode = ( missionNameSpace getVariable ("o_" + _oop_topParent + "_stm_" +   _x) ); missionNameSpace setVariable [("o_" + "Air" + "_stm_" +   _x),  _oop_methodCode]; 	} forEach (_oop_staticMemList - ["new", "delete", "copy"]); }; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "parents"),  _oop_parents]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "memList"),  _oop_memList]; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_spm_" +   "staticMemList"),  _oop_staticMemList]; _oop_staticMemList pushBackUnique "new"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "new"), {} ]; _oop_staticMemList pushBackUnique "delete"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "delete"), {} ]; _oop_staticMemList pushBackUnique "copy"; missionNameSpace setVariable [("o_" + _oop_classNameStr + "_stm_" +  "copy"), {} ]; _oop_memList pushBackUnique "oop_parent";
};


private _offroad0 = [] call { if (!(["Offroad", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 118] call OOP_assert_class)) exitWith {format ["ERROR_NO_CLASS_%1", "Offroad"]}; private _oop_nextID = ( missionNameSpace getVariable ("o_" + "Offroad" + "_spm_" +   "nextID") ); missionNameSpace setVariable [("o_" + "Offroad" + "_spm_" +   "nextID"),  _oop_nextID+1]; private _objNameStr = ("o_" + "Offroad" + "_N_" + (format ["%1",  _oop_nextID])); missionNameSpace setVariable [(_objNameStr + "_" +   "oop_parent"),  "Offroad"]; private _oop_parents = ( missionNameSpace getVariable ("o_" + "Offroad" + "_spm_" +   "parents") ); private _oop_i = 0; private _oop_parentCount = count _oop_parents; while {_oop_i < _oop_parentCount} do { 	([_objNameStr] +  []) call ( if([(_oop_parents select _oop_i),  "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 118] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (_oop_parents select _oop_i) + "_stm_" +    "new") )}else{nil} ); 	_oop_i = _oop_i + 1; }; ([_objNameStr] +   []) call ( if([(( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )),   "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 118] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )) + "_stm_" +     "new") )}else{nil} ); _objNameStr };
private _offroad1 = [] call { if (!(["Offroad", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 119] call OOP_assert_class)) exitWith {format ["ERROR_NO_CLASS_%1", "Offroad"]}; private _oop_nextID = ( missionNameSpace getVariable ("o_" + "Offroad" + "_spm_" +   "nextID") ); missionNameSpace setVariable [("o_" + "Offroad" + "_spm_" +   "nextID"),  _oop_nextID+1]; private _objNameStr = ("o_" + "Offroad" + "_N_" + (format ["%1",  _oop_nextID])); missionNameSpace setVariable [(_objNameStr + "_" +   "oop_parent"),  "Offroad"]; private _oop_parents = ( missionNameSpace getVariable ("o_" + "Offroad" + "_spm_" +   "parents") ); private _oop_i = 0; private _oop_parentCount = count _oop_parents; while {_oop_i < _oop_parentCount} do { 	([_objNameStr] +  []) call ( if([(_oop_parents select _oop_i),  "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 119] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (_oop_parents select _oop_i) + "_stm_" +    "new") )}else{nil} ); 	_oop_i = _oop_i + 1; }; ([_objNameStr] +   []) call ( if([(( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )),   "new", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 119] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (( missionNameSpace getVariable (_objNameStr + "_" +   "oop_parent") )) + "_stm_" +     "new") )}else{nil} ); _objNameStr };
[] call { if (!([_offroad1, "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 120] call OOP_assert_object)) exitWith {}; private _oop_classNameStr = (( missionNameSpace getVariable (_offroad1 + "_" +   "oop_parent") )); private _oop_parents = ( missionNameSpace getVariable ("o_" + _oop_classNameStr + "_spm_" +   "parents") ); private _oop_parentCount = count _oop_parents; private _oop_i = _oop_parentCount - 1; ([_offroad1] +  []) call ( if([(( missionNameSpace getVariable (_offroad1 + "_" +   "oop_parent") )),   "delete", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 120] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (( missionNameSpace getVariable (_offroad1 + "_" +   "oop_parent") )) + "_stm_" +     "delete") )}else{nil} ); while {_oop_i > -1} do { [_offroad1] call ( if([(_oop_parents select _oop_i),  "delete", "C:\Users\Admin\Documents\Arma 3 - Other Profiles\Sparker\missions\OOP_Light.VR\OOP_test.sqf", 120] call OOP_assert_staticMember) then {( missionNameSpace getVariable ("o_" + (_oop_parents select _oop_i) + "_stm_" +    "delete") )}else{nil} ); _oop_i = _oop_i - 1; }; private _oop_memList = ( missionNameSpace getVariable ("o_" + _oop_classNameStr + "_spm_" +   "memList") ); {missionNameSpace setVariable [(_offroad1 + "_" +   _x),  nil];} forEach _oop_memList; };}