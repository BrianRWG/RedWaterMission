/*
	File: fn_packupbarriersmall.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed barriersmall.
*/
private["_barriersmall"];
_barriersmall = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0;
if(isNil "_barriersmall") exitWith {};

if(([true,"barriersmall",1] call life_fnc_handleInv)) then
{
	titleText["You picked up your Small Barrier","PLAIN"];
	deleteVehicle _barriersmall;
};
