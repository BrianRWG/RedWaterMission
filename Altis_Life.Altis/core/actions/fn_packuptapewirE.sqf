/*
	File: fn_packuptapewire.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Packs up a deployed tapewire.
*/
private["_tapewire"];
_tapewire = nearestObjects[getPos player,["TapeSign_F"],8] select 0;
if(isNil "_tapewire") exitWith {};

if(([true,"tapewirE",1] call life_fnc_handleInv)) then
{
	titleText["You have packed up the tape wire.","PLAIN"];
	deleteVehicle _tapewire;
};