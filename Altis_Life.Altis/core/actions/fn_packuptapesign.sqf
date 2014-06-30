/*
	File: fn_packuptapesign.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed barrier.
*/
private["_tapesign"];
_tapesign = nearestObjects[getPos player,["TapeSign_F"],8] select 0;
if(isNil "_tapesign") exitWith {};

if(([true,"tapesign",1] call life_fnc_handleInv)) then
{
	titleText["You picked up your Tape Sign","PLAIN"];
	deleteVehicle _tapesign;
};
