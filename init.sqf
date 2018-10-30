/*
Init.sqf
*/

// ---- Initialize the core OOP_Light ----

diag_log "Init.sqf was called here!";

call compile preprocessFileLineNumbers "OOP_Light\OOP_Light_init.sqf";

call compile preprocessFileLineNumbers "OOP_test.sqf";

// ---- Initialize other classes ----

// Initialize MessageReceiver class
call compile preprocessFileLineNumbers "MessageReceiver\MessageReceiver.sqf";

// Initialize MessageReceiverEx class
call compile preprocessFileLineNumbers "MessageReceiverEx\MessageReceiverEx.sqf";

// Initialize DebugPrinter class
call compile preprocessFileLineNumbers "DebugPrinter\DebugPrinter.sqf";

// Initialize MessageLoop class
call compile preprocessFileLineNumbers "MessageLoop\MessageLoop.sqf";

// Initialize Timer class
call compile preprocessFileLineNumbers "Timer\Timer.sqf";

// Initialize TimerService class
call compile preprocessFileLineNumbers "TimerService\TimerService.sqf";


// Run an example script
call compile preprocessFileLineNumbers "Example.sqf";