/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Unprocessed Oil"};
	case "life_inv_oilp": {"Processed Oil"};
	case "life_inv_heroinu": {"Poppy Plants"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_cannabis": {"Pot Plants"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_methu": {"Meth Supplies"};
	case "life_inv_methp": {"Methamphetamine"};
	case "life_inv_kroku": {"Krok Supplies"};
	case "life_inv_krokp": {"Krokodil"};
	case "life_inv_apple": {"Apple"};
	case "life_inv_rabbit": {"Rabbit Meat"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornate Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Tuna Meat"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Cat Shark Meat"};
	case "life_inv_turtle": {"Turtle Meat"};
	case "life_inv_fishingpoles": {"Fishing Pole"};
	case "life_inv_water": {"Water Bottle"};
	case "life_inv_coffee": {"Coffee"};
	case "life_inv_turtlesoup": {"Turtle Soup"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Empty Fuel Can"};
	case "life_inv_fuelF": {"Full Fuel Can"};
	case "life_inv_pickaxe": {"Pickaxe"};
	case "life_inv_copperore": {"Copper Ore"};
	case "life_inv_ironore": {"Iron Ore"};
	case "life_inv_ironr": {"Iron Ingot"};
	case "life_inv_copperr": {"Copper Ingot"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salt"};
	case "life_inv_saltr": {"Refined Salt"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Diamond Uncut"};
	case "life_inv_diamondr": {"Diamond Cut"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Lockpick"};
	case "life_inv_peach": {"Peach"};
	case "life_inv_coke": {"Coca Plants"};
	case "life_inv_cokep": {"Cocaine"};
	case "life_inv_spikeStrip": {"Spike Strip"};
	case "life_inv_rock": {"Rock"};
	case "life_inv_cement": {"Cement Bag"};
	case "life_inv_goldbar": {"Gold Bar"};
	case "life_inv_gyros": {"Hot Gyros"};
	case "life_inv_burgers": {"HotBurger"};
	case "life_inv_pizza": {"NY Style Pizza"};
	case "life_inv_chips": {"Hot Chips"};
	case "life_inv_mtdew": {"Mountain Dew"};
	case "life_inv_kidney": {"Black Market Kidney"};
	case "life_inv_goldu": {"Gold Nuggets"};
    case "life_inv_goldp": {"Gold Ingot"};
	case "life_inv_barrieR": {"Barrier"};
	case "life_inv_smallbarrieR": {"Small Barrier"};
	case "life_inv_tapewirE": {"Tape Wire"};
	case "life_inv_conE": {"Cone"};
	case "life_inv_storage1": {"House Storage"};
    case "life_inv_storage2": {"House Storage Large"};
	case "life_inv_lighter": {"lighter"};
	
	//License Block
	case "license_civ_driver": {"Driver License"};
	case "license_civ_air": {"Pilot License"};
	case "license_civ_heroin": {"Make Heroin"};
	case "license_civ_gang": {"Gang License"};
	case "license_civ_oil": {"Oil Processing"};
	case "license_civ_dive": {"Diving License"};
	case "license_civ_boat": {"Boating License"};
	case "license_civ_gun": {"Firearm License"};
	case "license_cop_air": {"Pilot License"};
	case "license_cop_swat": {"Swat License"};
	case "license_cop_cg": {"Coast Guard"};
	case "license_civ_rebel": {"Rebel Training"};
	case "license_civ_truck": {"Truck License"};
	case "license_civ_diamond": {"Diamond Processing"};
	case "license_civ_copper": {"Copper Processing"};
	case "license_civ_iron": {"Iron Processing"};
	case "license_civ_sand": {"Sand Processing"};
	case "license_civ_salt": {"Salt Processing"};
	case "license_civ_coke": {"Cocaine Mixing Lesson"};
	case "license_civ_marijuana": {"Dry and Bag Pot Plants"};
	case "license_civ_cement": {"Cement Mixing License"};
	case "license_med_air": {"Pilot License"};
	case "license_civ_meth": {"Cook Meth Supplies"};
	case "license_civ_krok": {"Mix up Krokodil"};
	case "license_civ_gold": {"Gold Manufacturing"};
};
