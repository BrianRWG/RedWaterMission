/*
	File: fn_packupbarrier.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Packs up a deployed barrier.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrier") exitWith {};

if(([true,"barrieR",1] call life_fnc_handleInv)) then
{
	titleText["You have packed up the barrier.","PLAIN"];
	deleteVehicle _barrier;
};