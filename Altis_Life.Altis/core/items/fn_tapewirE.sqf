/*
	File: fn_tapewirE.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_tapewirE"];
_tapewirE = "TapeSign_F" createVehicle [0,0,0];
_tapewirE attachTo[player,[0,5.5,0]];
_tapewirE setDir 90;
_tapewirE setVariable["item","tapewireDeployed",true];

life_tapewire = _tapewirE;
waitUntil {isNull life_tapewirE};

if(isNull _tapewirE) exitWith {life_tapewire = ObjNull;};
_tapewirE setPos [(getPos _tapewirE select 0),(getPos _tapewirE select 1),0];
_tapewirE setDamage 1;
[[_tapewirE],"STS_fnc_tapewirE",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.