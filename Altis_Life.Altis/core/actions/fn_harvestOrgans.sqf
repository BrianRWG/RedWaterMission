/*
	File: fn_harvestOrgans.sqf
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable ["missingOrgan",true])) exitWith {};
if((animationState _unit != "Incapacitated")) exitWith {};
if(!isPlayer _unit) exitWith {};
if(!([true,"life_inv_kidney",1] call life_fnc_handleInv)) exitWith {hint "You don't have room to store any organs!"};

player playMove "AinjPpneMstpSnonWrflDnon_rolltoback";
sleep 3;


[[player], "life_fnc_harvestMyOrgans", _unit, false] spawn life_fnc_MP;
_unit setVariable["missingOrgan",TRUE,TRUE];