/*
	File: fn_tapesign.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:

*/
private["_position","_tapesign"];
_tapesign = "TapeSign_F" createVehicle [0,0,0];
_tapesign attachTo[player,[0,5.5,0]];
_tapesign setDir 90;
_tapesign setVariable["item",true];

life_tapesign = _tapesign;
waitUntil {isNull life_tapesign};

if(isNull _tapesign) exitWith {life_tapesign = ObjNull;};
_tapesign setPos [(getPos _tapesign select 0),(getPos _tapesign select 1),0];
_tapesign setDamage 1;
