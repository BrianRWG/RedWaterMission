/*
	File: fn_packupBarriere.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed barrier.
*/
private["_barriere"];
_barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barriere") exitWith {};

if(([true,"barriere",1] call life_fnc_handleInv)) then
{
	titleText["You picked up your barrier","PLAIN"];
	deleteVehicle _barriere;
};