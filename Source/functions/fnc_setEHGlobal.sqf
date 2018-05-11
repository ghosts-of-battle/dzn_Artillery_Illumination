/*
	author: 10Dozen
	description: Sets fired event handler for all clients
	input: 0: OBJECT - artillery unit, 1: STRING - type ("Mortar" or "Howitzer")
	returns: nothing
	example:
*/

params["_v","_type"];

[
	_v
	, [
		"Fired"
		, compile format ["[_this, %1] spawn %2", _type, SVAR(fnc_setFlareEffectGlobal)]
	]
] remoteExec ["addEventhandler", 0];