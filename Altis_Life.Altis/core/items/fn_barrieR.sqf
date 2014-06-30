/*
	File: fn_barrieR.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_barrier"];
_barrieR = "RoadBarrier_F" createVehicle [0,0,0];
_barrieR attachTo[player,[0,5.5,0]];
_barrieR setDir 90;
_barrieR setVariable["item","barrierDeployed",true];

life_barrier = _barrieR;
waitUntil {isNull life_barrieR};

if(isNull _barrieR) exitWith {life_barrier = ObjNull;};
_barrieR setPos [(getPos _barrieR select 0),(getPos _barrieR select 1),0];
_barrieR setDamage 1;
[[_barrieR],"STS_fnc_barrieR",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.