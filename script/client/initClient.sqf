if !(computerOn) then {
	computer addAction ["Start computer", {

		"script\server\start\turnOnComputer.sqf" call TGV_fnc_execScriptOnServer;

	}];

};