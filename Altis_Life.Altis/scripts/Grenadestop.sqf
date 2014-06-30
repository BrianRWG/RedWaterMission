/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    INSTALLATION:
    Move grenadeStop.sqf to your mission's folder. Then add the
    following line to your init.sqf file (create one if necessary):
    execVM "grenadeStop.sqf";
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["cop_safe_ant", 135],["cop_safe_pyr", 100],["civ_safe_ant", 175],["don_safe_comp", 80],["civ_safe_pyr", 175],["town_safe_agio", 100],["reb_safe_west", 100],["reb_safe_ghost", 150],["civ_safe_airport",100],["civ_safe_donorair",100],["cop_safe_airport",50],["civ_safe_kavala",250],["civ_safe_charkia",100],["cop_safe_kavala",150],["reb_safe_kavala",150]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "This is a SAFE ZONE - No Stealing, No Knocking Out, NO SHOOTING, No VDM - You have been warned"

if (isDedicated) exitWith {};
waitUntil {!isNull player};
if(playerSide != west) then {
		player addEventHandler ["Fired", {
			if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
			{
				deleteVehicle (_this select 6);
				hint parseText format["<t color='#FFFFFF'><t align='center'><t size='1'>YOU ARE IN A<br/><t color='#FF0000'><t size ='2.5'<t align='center'>Safe Zone<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No Violence<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No KnockOuts<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No Robbing<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No Stealing<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No Trolling"];
				//titleText [MESSAGE, "PLAIN", 3];
			};
		}];  

	};