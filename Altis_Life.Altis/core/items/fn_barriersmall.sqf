/*
	File: fn_barriersmall.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:

*/
private["_position","_barriersmall"];
_barriersmall = "RoadBarrier_small_F" createVehicle [0,0,0];
_barriersmall attachTo[player,[0,5.5,0]];
_barriersmall setDir 90;
_barriersmall setVariable["item",true];

life_barriersmall = _barriersmall;
waitUntil {isNull life_barriersmall};

if(isNull _barriersmall) exitWith {life_barriersmall = ObjNull;};
_barriersmall setPos [(getPos _barriersmall select 0),(getPos _barriersmall select 1),0];
_barriersmall setDamage 1;
