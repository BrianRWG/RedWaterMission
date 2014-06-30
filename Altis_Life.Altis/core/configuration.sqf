#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
Life_request_timer = false;

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,1500); //Fee for players to pay when revived.

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 165; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 35; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/* Safe Zones
["markername", safe_radius] */
life_safe_points =
	[
		["cop_safe_ant", 135],
		["cop_safe_pyr", 100],
		["civ_safe_ant", 175],
		["don_safe_comp", 80],
		["civ_safe_pyr", 175],
		["town_safe_agio", 100],
		["reb_safe_west", 100],
		["reb_safe_ghost", 150],
		["civ_safe_airport",100],
		["civ_safe_donorair",100],
		["cop_safe_airport",50],
		["civ_safe_charkia",100]
	];
__CONST__(life_safe_points,life_safe_points);


/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;
life_eat_gyros = 50;
life_eat_burgers = 25;
life_eat_pizza = 20;
life_eat_chips = 10;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,5000);
__CONST__(life_impound_boat,5500);
__CONST__(life_impound_air,7850);
life_istazed = false;
life_my_gang = ObjNull;
life_isSuicide = false;
life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 75000; //Starting Bank Money
		life_paycheck = 5000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 45000; //Starting Bank Money
		life_paycheck = 1750; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 55000;
		life_paycheck = 2000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = 
[
	"B_MRAP_01_hmg_F",
	"B_G_Offroad_01_armed_F",
	"C_Kart_01_Blu_F",
	"C_Kart_01_Fuel_F",
	"C_Kart_01_Red_F",
	"C_Kart_01_Vrana_F",
	"I_Plane_Fighter_03_AA_F",
	"I_Plane_Fighter_03_CAS_F",
	"B_Plane_CAS_01_F",
	"O_Plane_CAS_02_F",
	"O_Heli_Attack_02_F",
	"B_Heli_Transport_01_F"
	
];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_methu",
	"life_inv_methp",
	"life_inv_kroku",
	"life_inv_krokp",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_gyros",
	"life_inv_burgers",
	"life_inv_pizza",
	"life_inv_chips",
	"life_inv_mtdew",
	"life_inv_kidney",
	"life_inv_goldu",
	"life_inv_goldp",
	"life_inv_lighter",
	"life_inv_storage1",
	"life_inv_storage2",
	"life_inv_barrieR",
	"life_inv_smallbarrieR",
	"life_inv_tapewirE",
	"life_inv_conE"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_krok","civ"],
	["license_civ_meth","civ"],
	["license_civ_gang","civ"],
	["license_civ_cartel","civ"],
	["licsnse_civ_syndicate","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_gold","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["cannabis",100],["methp",1500],["methu",1500],["krokp",1500],["turtle",3000],["kidney",5000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",2500],
	["heroinp",7500],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",13000],
	["water",5],
	["chips",5],
	["mtdew",5],
	["pizza",5],
	["burgers",5],
	["gyros",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",9000],
	["kroku",900],
	["krokp",9000],
	["methu",750],
	["methp",7500],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",500],
	["redgull",200],
	["peach",55],
	["cocaine",7500],
	["cocainep",7500],
	["diamond",2000],
	["diamondc",5500],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",800],
	["methu",1000],
	["methp",7500],
	["kroku",1000],
	["krokp",8500],
	["cement",1950],
	["kidney",75000],
	["goldu",10000],
	["goldp",30000],
	["storage1",100000],
	["storage2",250000],
	["barrieR",1],
	["smallbarrieR",1],
	["tapewirE",1],
	["conE",1],
	["lighter",5000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["chips",150],
	["mtdew",250],
	["pizza",250],
	["burgers",350],
	["gyros",600],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",600],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",1000],
	["methp",9500],
	["cocainep",9500],
	["heroinp",9500],
	["marijuana",10000],
	["krokp",9000],
	["diamondc",10000],
	["kidney",50000],
	["storage1",100000],
	["storage2",250000],
	["barrieR",1],
	["smallbarrieR",1],
	["tapewirE",1],
	["conE",1],
	["lighter",5000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",0],
	["ItemCompass",0],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",1500],
	["30Rnd_556x45_Stanag",50],
	["20Rnd_762x51_Mag",50],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",1500],
	["arifle_TRG21_F",1500],
	["optic_Holosight",0],
	["optic_Arco",0],
	["optic_DMS",2500],
	["optic_NVS",2500],
	["optic_SOS",2500],
	["optic_MRCO",2500],
	["optic_Hamr",2500],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",1500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["B_MRAP_01_F",0]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",500],
	["C_Hatchback_01_F",1300],
	["C_Offroad_01_F", 2000],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",2800],
	["C_Van_01_transport_F",6000],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",35000],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",8000],
	["I_Truck_02_transport_F",20000],
	["I_Truck_02_covered_F",20000],
	["B_Truck_01_transport_F",20000],
	["B_Truck_01_box_F",20000],
	["O_MRAP_02_F",350000],
	["B_Heli_Light_01_F",150000],
	["O_Heli_Light_02_unarmed_F",150000],
	["C_Rubberboat",4000],
	["C_Boat_Civil_01_F",15000],
	["B_Boat_Transport_01_F",2500],
	["C_Boat_Civil_01_police_F",15000],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["I_Heli_light_03_unarmed_F",90000],
	["O_Plane_CAS_02_F",1000000],
	["B_Plane_CAS_01_F",1000000],
	["I_Plane_Fighter_03_CAS_F",1000000],
	["I_Plane_Fighter_03_AA_F",1000000]
];
__CONST__(life_garage_sell,life_garage_sell);