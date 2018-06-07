/*
Init.sqf
*/

diag_log "Init.sqf was called here!";

call compile preprocessFileLineNumbers "OOP\OOP_init.sqf";

call compile preprocessFileLineNumbers "OOP_test.sqf";