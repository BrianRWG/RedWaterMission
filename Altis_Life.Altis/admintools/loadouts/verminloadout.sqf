RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

//Load player with default cop gear.
player addUniform "U_OG_Guerilla3_1";
player addHeadgear "H_CrewHelmetHeli_B";
player addVest "V_PlateCarrier1_blk";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "30Rnd_45ACP_Mag_SMG_01_tracer_green";
player addMagazine "30Rnd_45ACP_Mag_SMG_01_tracer_green";
player addMagazine "30Rnd_45ACP_Mag_SMG_01_tracer_green";
player addWeapon "hgun_Pistol_heavy_01_MRD_F";
player addWeapon "SMG_01_ACO_F";
player selectWeapon "SMG_01_ACO_F";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addBackPack 'B_AssaultPack_blk';
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["NVGoggles", 1];
mybackpack addItemCargoGlobal ["FirstAidKit", 2];
mybackpack addItemCargoGlobal ["Toolkit", 1];
reload player;