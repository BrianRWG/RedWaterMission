/*
	File: fn_packupcone.sqf
	Author: Bryan "Tonic" Boardwine // Edited by Aphec & SaOk
	
	Description:
	Packs up a deployed cone.
*/
private["_cone"];
_cone = nearestObjects[getPos player,["RoadCone_F"],8] select 0;
if(isNil "_cone") exitWith {};

if(([true,"conE",1] call life_fnc_handleInv)) then
{
	titleText["You have packed up the cone.","PLAIN"];
	deleteVehicle _cone;
};