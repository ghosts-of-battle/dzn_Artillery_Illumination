#include "macro.hpp"
#include "Functions.sqf"
#include "Settings.sqf"

[] spawn {
	while { true } do {
		{
			private _v = _x;
			private _isMortar = {_v isKindOf _x} count GVAR(M_List) > 0;
			private _isHowitzer = {_v isKindOf _x} count GVAR(H_List) > 0;

			if (_isMortar || _isHowitzer) then {
				[_v, if (_isMortar) then { "Mortar" } else { "Howitzer" }] call GVAR(fnc_setEHGlobal);
			};

			sleep 0.01;
		} forEach vehicles;

		sleep (5 + random (5));
	};
};