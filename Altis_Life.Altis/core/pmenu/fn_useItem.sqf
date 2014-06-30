/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You need to select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["You can now run farther for 3 minutes","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
		case (_item == "battery"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_battery = 100;
			hint "Your battery is full now.";
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "You already have a Spike Strip active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_drug_use;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_drugweed_use;
		};
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};
	
	case "fishing":
	{
		[] spawn fnc_fishing;
	};
	
	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};

	case (_item in ["storage1","storage2"]):
    {
		[_item] call life_fnc_placeStorage;
    };	
			case (_item == "barrieR"):
	{
		if(!isNull life_barrier) exitWith {hint "You already have a Barrier active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barrieR;
		};
	};
	case (_item == "smallbarrieR"):
	{
		if(!isNull life_smallbarrier) exitWith {hint "You already have a Small Barrier active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_smallbarrieR;
		};
	};
	case (_item == "tapewirE"):
	{
		if(!isNull life_tapewire) exitWith {hint "You already have a Tape Wire active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_tapewirE;
		};
	};
	case (_item == "conE"):
	{
		if(!isNull life_cone) exitWith {hint "You already have a Cone active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_conE;
		};
	};
		case (_item == "lighter"):
	{
		[] spawn life_fnc_lighter;
	};

	default
	{
		hint "This item isn't usable.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;