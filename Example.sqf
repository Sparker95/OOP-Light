/*
Example of using MessageReceiver and Timer classes

Author: Sparker 31.10.2018
*/

#include "OOP_Light\OOP_Light.h"
#include "Message\Message.hpp"

// Create a timer service for out timers with 200ms resolution
// We might want to create several timer services if we need different timer resolutions in order to save some CPU time

gTimerServiceMain = NEW("TimerService", [0.2]); // timer resolution



// Create a message loop for our MessageReceiver-derived objects, because we must attach these objects to an actual thread (message loop)

gMessageLoopMain = NEW("MessageLoop", []);
CALL_METHOD(gMessageLoopMain, "setDebugName", ["Main thread"]);


// Create a MessageReceiver-derived object, DebugPrinter, which will simply print everything which has been sent to it as a message
// The debug printer's constructor takes a name and a messageLoop as arguments

// Printer 0

private _args = ["Debug printer 0", gMessageLoopMain]; // Since we can't pass anything with ',' to a macro, we must create an argument array externally
gPrinter0 = NEW("DebugPrinter", _args);

// Printer 1

private _args = ["Debug printer 1", gMessageLoopMain]; // Since we can't pass anything with ',' to a macro, we must create an argument array externally
gPrinter1 = NEW("DebugPrinter", _args);


// Create timers to send messages to printers at fixed time intervals

// First we create the message which will be sent to the destination by the timer
private _msg = MESSAGE_NEW();
_msg set [MESSAGE_ID_DESTINATION, gPrinter0];
_msg set [MESSAGE_ID_SOURCE, ""]; // SOURCE field is typically not used, but might use it in the future
_msg set [MESSAGE_ID_DATA, "Looong interval timer    .    .    .    .    .    ."]; // 
_msg set [MESSAGE_ID_TYPE, 666]; // Type of the message, can be anything you want, but it must be evaluatable by a switch{} statement

// Then we create the timer object, passing the _msg to it
private _args = [gPrinter0, 6, _msg, gTimerServiceMain]; // message receiver, interval, message, timer service
private _timer0 = NEW("Timer", _args); // Here we go, it should start sending messages which you should be able to see in the .rpt file


// Create one more timer with a different interval, directed to a different DebugPrinter
_msg set [MESSAGE_ID_DATA, "Super fast timer! . . . . . . . . . . . . ."]; // 

// Then we create the timer object, passing the _msg to it
private _args = [gPrinter1, 0.5, _msg, gTimerServiceMain]; // message receiver, interval, message, timer service
private _timer1 = NEW("Timer", _args);