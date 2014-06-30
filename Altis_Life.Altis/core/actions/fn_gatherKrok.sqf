/*
File: fn_gatherKrok.sqf

Description:
Cooking Krokodil
*/
private["_sum"];
_sum = ["kroku",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Krok"],"PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"kroku",1] call life_fnc_handleInv)) then
	{
		playSound "bag"; // this only if you want the sound for the bag when you gather it 
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_Krok"],"PLAIN"];
	};
};

life_action_inUse = false;