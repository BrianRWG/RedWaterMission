/*
	File: fn_escortAction.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit ) exitWith {};
//if(!(side _unit in [civilian,independent])) exitWith {};
_unit attachTo [player,[0.1,1.1,0]];
_unit setVariable["transporting",false,true];
_unit setVariable["Escorting",true,true];
player reveal _unit;
if (side player == civilian && side _unit == civilian ) then {
	
	[[getPlayerUID player,name player,"207A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format["911 Reports of suspect: %1 attempting to kidnap %2.",name player,name _unit]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};