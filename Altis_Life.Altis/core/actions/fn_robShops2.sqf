/* 		
			file: fn_robShops.sqf
			Author: MrKraken
			Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
			Description:
			Executes the rob shob action!
			Idea developed by PEpwnzya v2.0
			
*/ 
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_fightback"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_fightBack = round (random 10);
if !(alive _robber) exitWith {};

if (_fightBack == 2) exitWith {
			5 cutText ["","PLAIN"];
			[[1,format["%1 tried to rob the %2 gas station and was restrained by the shopkeeper",name player, _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[getPlayerUID player,name player,"211G"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			call life_fnc_failedRobbery;
};

_rip = true;
_kassa = 10000 + round(random 12000); //setting the money in the registry, anywhere from 3000 to 15000. 
[[_shop,_robber,_action,-1],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear. 
_chance = random(100); //calling a random number between 0-100. 
if(_chance >= 25) then { hint "The cashier hit the silent alarm, police has been alerted!"; [[1,format["ALARM! - A silent alarm was triggered at the %1 Gas Station!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _shop];}; //We set a 15% chance that the silent alarm is being triggered, wich sends a 911-message to the police. 

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (5m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.008;

if(_rip) then
{
	while{true} do
	{
		sleep  0.85;
		_cP = _cP + 0.005;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Robbery in Progress, stay close (5m) (%1%2)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 5) exitWith { };
		if!(alive _robber) exitWith {};
		
	}; // the loop continues til the progressbar is full, distance is exceeded or robber dies. 
	if!(alive _robber) exitWith { _rip = false; };
	if(_robber distance _shop > 3) exitWith { hint "You need to stay within 3m to rob the gas station! - Now the register is locked."; 5 cutText ["","PLAIN"]; _rip = false; };
	5 cutText ["","PLAIN"];
	titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash + _kassa; //I am using a moneylaundry system on my server, but if you do not change this to life_cash instead.
	_rip = false;
	life_use_atm = false;
	sleep (30 + random(30)); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery. 
	life_use_atm = true; // Robber can not use the ATM at this point.
	if!(alive _robber) exitWith {};
	[[1,format["911 - %2 Gas Station was just robbed by %1 for a total of $%3",name _robber, _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[0,format["NEWS: %1 Gas Station was just robbed for a total of $%2", _shop, [_kassa] call life_fnc_numberText]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,name _robber,"211G"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; //Sending out broadcasts about the robbery after the fact. Also adds robber to wantedlist. In serverside wantedAdd, add a new case for 211A or just use 211 if you want. 211 is already setup as robbery.
};
[[_shop,_robber,_action,0],"TON_fnc_shopState",false,false] spawn life_fnc_MP; //We are now calling the serverside script again to tell it about the fact that robbery script is finnished clientside and the outcome.