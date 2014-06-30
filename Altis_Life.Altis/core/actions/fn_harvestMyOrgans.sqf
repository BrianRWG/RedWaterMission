/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_crim"];
_crim = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _crim) exitWith {};

//player setVariable["missingOrgan",true,true];

[[getPlayerUID _crim,name _crim,"919"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
[[1,format["%1 has harvested a kidney from %2.",name _crim,name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;