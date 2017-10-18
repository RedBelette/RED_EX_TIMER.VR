if (timer > 0) then {
	timer = timer - 1;
	publicVariable "timer";
};

// Renvoyez le nouveau timer à tous les clients
["script\client\refreshTimer.sqf", true] call TGV_fnc_execScriptOnClients;