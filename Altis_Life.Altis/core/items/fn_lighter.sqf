_arsonist = name player;
_everyone = allUnits;
if (({side _x == east} count _everyone) < 1) exitWith {player groupChat "There are no Firefighters on, You cannot start a fire!"};
	if(([true,"firestarter",1] call life_fnc_handleInv)) then
		{
		player groupChat "You have started a fire, Leave the area before someone sees you!";
	_pos = [(position player select 0) + (sin(getdir player)*2), (position player select 1) + (cos(getdir player)*2), 0];
	_obj = "Campfire_burning_F" createvehicle [0, 0, 0];
	_obj setdir getdir player;
	_obj setpos _pos;
	_obj setPosASL [ getPosASL player select 0, (getPosASL player select 1), getPosASL player select 2];

	_pos2 = [(position player select 0) + (sin(getdir player)*2), (position player select 1) + (cos(getdir player)*2), 0];
	_obj2 = "Land_Canister_EP1" createvehicle [0, 0, 0];
	_obj2 setdir getdir player;
	_obj2 setpos _pos2;
	_obj2 setPosASL [ getPosASL player select 0, (getPosASL player select 1), getPosASL player select 2];

	_smoke = "test_EmptyObjectForSmoke" createVehicle position _obj;
	_smoke setPosASL [ getPosASL player select 0, getPosASL player select 1, (getPosASL player select 2) + 0];
	sleep 5;
	[[2,"Someone has just started a fire!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	};
	while {alive _obj} do {
	_numbah = round random 20;
	_random = round random 100;
	_new1 = round random 8;
	_new2 = round random 8;
	if (not alive _smoke) then {_smoke = "test_EmptyObjectForSmoke" createVehicle position _obj;_smoke setPosASL [ getPosASL _obj select 0, (getPosASL _obj select 1), getPosASL _obj select 2];};
	sleep (_numbah);
	bomb = "MiniGrenade" createVehicle position _obj;
	if (_random >=80) then {fire2 = "Campfire_burning_F" createVehicle position _obj; fire2 setPos [(getPos _obj select 0) + _new1, (getPos _obj select 1) + _new2, 0];_smoke2 = "test_EmptyObjectForSmoke" createVehicle position fire2;};
	};