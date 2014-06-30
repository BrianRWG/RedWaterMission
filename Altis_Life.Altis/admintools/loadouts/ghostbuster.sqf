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
player addUniform "U_C_Scientist";
player addHeadgear "H_PilotHelmetFighter_I";
player addVest "V_Chestrig_blk";
player addMagazine "6Rnd_RedSignal_F";
player addMagazine "6Rnd_RedSignal_F";
player addMagazine "6Rnd_RedSignal_F";
player addMagazine "6Rnd_RedSignal_F";
player addWeapon "hgun_Pistol_Signal_F";
player selectWeapon "hgun_Pistol_Signal_F";
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
