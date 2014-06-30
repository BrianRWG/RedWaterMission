/*
	File: fn_putInCar.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Finds the nearest vehicle and loads the target into the vehicle.
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !isPlayer _unit) exitWith {};

_nearestVehicle = nearestObjects[getPosATL player,["Car","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {hint "There isn't a vehicle near by.."};

detach _unit;
[[_nearestVehicle],"life_fnc_moveIn",_unit,false] call life_fnc_MP;
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",TRUE,TRUE];

if (side player == civilian && side _unit == civilian ) then {
	_gridSpace = mapGridPosition getPos _unit;
	[[getPlayerUID player,name player,"207"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[1,format["ALERT: 911 Report!!  %1 has taken %2 hostage at GRID: %3.",name player,name _unit, _gridSpace]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};