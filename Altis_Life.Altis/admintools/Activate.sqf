#include <macro.h>
waituntil {!alive player ; !isnull (finddisplay 46)};
if (__GETC__(life_adminlevel) > 0)then {
	sleep 15;
	player addaction [("<t color=""#FF0000"">" + ("Admin Tools") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};