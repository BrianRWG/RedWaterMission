private ["_eh1","_inArea","_pos","_unit","_zone1","_zone2","_dis"];
_unit = _this select 0;

_zone1 = getMarkerPos "cop_safe_ant"; // marker name for the areas you want to protect
_zone2 = getMarkerPos "cop_safe_pyr";
_zone3 = getMarkerPos "civ_safe_ant";
_zone4 = getMarkerPos "don_safe_comp";
_zone5 = getMarkerPos "civ_safe_pyr";
_zone6 = getMarkerPos "town_safe_agio";
_zone7 = getMarkerPos "reb_safe_west";
_zone8 = getMarkerPos "reb_safe_ghost";
_zone9 = getMarkerPos "civ_safe_airport";
_zone10 = getMarkerPos "civ_safe_donorair";
_zone11 = getMarkerPos "cop_safe_airport";
_zone12 = getMarkerPos "civ_safe_charkia";
_dis50 = 50;                             // distance from area safe zone starts
_dis80 = 80;                             // distance from area safe zone starts
_dis100 = 100;                             // distance from area safe zone starts
_dis130 = 130;                             // distance from area safe zone starts
_dis150 = 150;                             // distance from area safe zone starts



if ((_zone1 distance _unit > _dis130) or (_zone2 distance _unit > _dis100) (_zone3 distance _unit > _dis150) or (_zone4 distance _unit > _dis80) or (_zone5 distance _unit > _dis150) or (_zone6 distance _unit > _dis100) or (_zone7 distance _unit > _dis100) or (_zone8 distance _unit > _dis150) or (_zone9 distance _unit > _dis100) or (_zone10 distance _unit > _dis100) or (_zone11 distance _unit > _dis50) or (_zone12 distance _unit > _dis100)) then {        //check if unit is in zone when script starts
   _inArea = false;
}else{
   _inArea = true;
   _eh1 = _unit addEventHandler ["fired", {deleteVehicle (_this select 6);}];
};



while {true} do {


   if (((_zone1 distance _unit > _dis130) or (_zone2 distance _unit > _dis100) (_zone3 distance _unit > _dis150) or (_zone4 distance _unit > _dis80) or (_zone5 distance _unit > _dis150) or (_zone6 distance _unit > _dis100) or (_zone7 distance _unit > _dis100) or (_zone8 distance _unit > _dis150) or (_zone9 distance _unit > _dis100) or (_zone10 distance _unit > _dis100) or (_zone11 distance _unit > _dis50) or (_zone12 distance _unit > _dis100)) && (!_inArea)) then {      // check if unit enters

      _eh1 = _unit addEventHandler ["fired", {deleteVehicle (_this select 6);}];
      _inArea = true;
      hint parseText format["<t color='#CCFF00'><t align='center'>YOU ARE IN A<br/><t color='0000FF'><t size ='1'<t align='center'>Safe Zone<br/><t color='#FF0000'><t align='center'><t size='.5'>No Violence<br/><t color='#FF0000'><t align='center'><t size='.5'>No Knock Outs<br/><t color='#FF0000'><t align='center'><t size='.5'>No Robbing<br/><t color='#FF0000'><t align='center'><t size='.5'>No Stealing<br/> <t color='#33CC33'><t align='center'><t size='1'>"];
	  _unit allowDamage false;
   };


   if (((_zone1 distance _unit > _dis) or (_zone2 distance _unit > _dis)) && (_inArea)) then {       // check if unit exits

      _unit removeEventHandler ["fired", _eh1];
      _inArea = false;
      hint parseText format["<t color='#CCFF00'><t align='center'>YOU HAVE LEFT THE<br/><t color='0000FF'><t size ='1'<t align='center'>Safe Zone<br/><t color='#FF0000'><t align='center'><t size='.5'>Have Fun"];
	  _unit allowDamage true;
   };

sleep 1;

};