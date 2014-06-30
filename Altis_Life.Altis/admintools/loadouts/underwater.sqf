
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
player addUniform "U_O_Wetsuit";
player addVest "V_RebreatherIR";
player addGoggles "G_Diving";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addWeapon "hgun_Pistol_heavy_01_MRD_F";
player addWeapon "arifle_SDAR_F";
player selectWeapon "arifle_SDAR_F";
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