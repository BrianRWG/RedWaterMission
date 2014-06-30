#include <macro.h>
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (_unit == player) then
{
	if (playerSide == west) then
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 1) : {player setObjectTextureGlobal [0, "textures\cop\cadet_1.jpg"]; };

            case (__GETC__(life_coplevel) == 2) : {player setObjectTextureGlobal [0, "textures\cop\patrol_1.jpg"]; };

            case (__GETC__(life_coplevel) == 3) : {player setObjectTextureGlobal [0, "textures\cop\sergeant_1.jpg"]; };

            case (__GETC__(life_coplevel) == 4) : {player setObjectTextureGlobal [0, "textures\cop\lt_1.jpg"]; };

            case (__GETC__(life_coplevel) == 5) : {player setObjectTextureGlobal [0, "textures\cop\captain_1.jpg"]; };

            case (__GETC__(life_coplevel) == 6) : {player setObjectTextureGlobal [0, "textures\cop\chief_1.jpg"]; };

            case (__GETC__(life_coplevel) == 7) : {player setObjectTextureGlobal [0, "textures\cop\commissioner_1.jpg"]; };
			
		};
	};
};