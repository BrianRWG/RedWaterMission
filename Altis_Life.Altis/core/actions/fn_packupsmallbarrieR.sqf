/*
	File: fn_packupsmallbarrier.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Packs up a deployed smallbarrier.
*/
private["_smallbarrier"];
_smallbarrier = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0;
if(isNil "_smallbarrier") exitWith {};

if(([true,"smallbarrieR",1] call life_fnc_handleInv)) then
{
	titleText["You have packed up the small barrier.","PLAIN"];
	deleteVehicle _smallbarrier;
};