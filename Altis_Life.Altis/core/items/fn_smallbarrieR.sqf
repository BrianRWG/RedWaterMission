/*
	File: fn_smallbarrieR.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_smallbarrieR"];
_smallbarrieR = "RoadBarrier_small_F" createVehicle [0,0,0];
_smallbarrieR attachTo[player,[0,5.5,0]];
_smallbarrieR setDir 90;
_smallbarrieR setVariable["item","smallbarrierDeployed",true];

life_smallbarrier = _smallbarrieR;
waitUntil {isNull life_smallbarrieR};

if(isNull _smallbarrieR) exitWith {life_smallbarrier = ObjNull;};
_smallbarrieR setPos [(getPos _smallbarrieR select 0),(getPos _smallbarrieR select 1),0];
_smallbarrieR setDamage 1;
[[_smallbarrieR],"STS_fnc_smallbarrieR",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.