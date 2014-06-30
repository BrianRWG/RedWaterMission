/*
	File: fn_conE.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_conE"];
_conE = "RoadCone_F" createVehicle [0,0,0];
_conE attachTo[player,[0,5.5,0]];
_conE setDir 90;
_conE setVariable["item","coneDeployed",true];

life_cone = _conE;
waitUntil {isNull life_conE};

if(isNull _conE) exitWith {life_cone = ObjNull;};
_conE setPos [(getPos _cone select 0),(getPos _cone select 1),0];
_conE setDamage 1;
[[_conE],"STS_fnc_conE",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.