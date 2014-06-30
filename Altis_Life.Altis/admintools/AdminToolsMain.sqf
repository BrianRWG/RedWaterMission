#include <macro.h>
_pathtotools = "admintools\tools\";
_pathtovehicles = "admintools\weapons\";
_pathtoloadouts = "admintools\loadouts\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoloadouts+'%1"';
//customise these menus to fit your server
if (__GETC__(life_adminlevel) > 0)
	then { //all admins
	if  (__GETC__(life_adminlevel) == 1) then { //mods
        grimmmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:GrimmModMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if (__GETC__(life_adminlevel) == 2)then { //admins
        grimmmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:GrimmAdminMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if (__GETC__(life_adminlevel) == 3) then { // super admins
		grimmmenu =
		[
			["",true],
				["Tools Menu", [2], "#USER:GrimmSuperMenu", -5, [["expression", ""]], "1", "1"],
				["Weapons", [3], "#USER:GrimmWeaponSelect", -5, [["expression", ""]], "1", "1"],
				["Loadouts", [4], "#USER:GrimmLoadoutSelect", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
};
//customise to fit
GrimmModMenu =
[
	["",true],
		
		["Spectate Player", [4],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//customise to fit
GrimmAdminMenu =
[
	["",true],
		
		["Spectate Player", [4],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		//["Teleport To Me", [5], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["ESP", [6], "", -5, [["expression", format[_EXECscript1, "ESP.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
GrimmSuperMenu =
[
	["",true],
		["ESP", [2], "", -5, [["expression", format[_EXECscript1, "ESP.sqf"]]], "1", "1"],
		["Spectate Player", [3],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["God Mode", [4],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
		["Teleport", [5], "", -5, [["expression", format[_EXECscript1, "Tele.sqf"]]], "1", "1"],
		["Teleport To Me", [6], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["Heal Self", [7],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		["Heal Player(s)", [8],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["KILL Player(s)", [9],  "", -5, [["expression", format[_EXECscript1,"killp.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
GrimmWeaponSelect =
					[
						["Weapons",true],
							//Add Weapons Here Gave some examples :D
							["FlareGun", [6],  "", -5, [["expression", format[_EXECscript2,"flaregun.sqf"]]], "1", "1"],
							["FlashBang", [4],  "", -5, [["expression", format[_EXECscript2,"fb.sqf"]]], "1", "1"],
							["MX Black", [2],  "", -5, [["expression", format[_EXECscript2,"mx.sqf"]]], "1", "1"],
							["MK 200", [3],  "", -5, [["expression", format[_EXECscript2,"mk200.sqf"]]], "1", "1"],
							["EBR", [5],  "", -5, [["expression", format[_EXECscript2,"ebr.sqf"]]], "1", "1"],
							["P07", [7],  "", -5, [["expression", format[_EXECscript2,"phgun.sqf"]]], "1", "1"],
							["TRG-21", [8],  "", -5, [["expression", format[_EXECscript2,"trg21.sqf"]]], "1", "1"],
							["Vermin", [9],  "", -5, [["expression", format[_EXECscript2,"vermin.sqf"]]], "1", "1"],
							["Vermin Loadout", [10],  "", -5, [["expression", format[_EXECscript2,"verminloadout.sqf"]]], "1", "1"],
							["Next page", [12], "#USER:GrimmWeaponSelect2", -5, [["expression", ""]], "1", "1"],
							["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
					];
GrimmLoadoutSelect =
					[
						["Loadouts",true],
							//Add Weapons Here Gave some examples :D
							["Vermin Loadout", [2],  "", -5, [["expression", format[_EXECscript3,"verminloadout.sqf"]]], "1", "1"],
							["Ghostbuster", [3],  "", -5, [["expression", format[_EXECscript3,"ghostbuster.sqf"]]], "1", "1"],
							["Underwater", [4],  "", -5, [["expression", format[_EXECscript3,"underwater.sqf"]]], "1", "1"],
							["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
					];
GrimmWeaponSelect2 = 
					[
						["Weapons 2",true],
							//Add Weapons Here Gave another page because it could get a little confusing :P
							["MX", [2],  "", -5, [["expression", format[_EXECscript2,"mx.sqf"]]], "1", "1"],
							["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
					];
showCommandingMenu "#USER:grimmmenu";