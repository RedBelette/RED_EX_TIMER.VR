hint "Computer started";

removeAllActions computer;

if (computerOn) then {
	computer addAction ["Run timer", {

		["script\server\control\runTimer.sqf"] call TGV_fnc_execScriptOnServer;

	}];

	computer addAction ["Stop timer", {

		["script\server\control\stopTimer.sqf"] call TGV_fnc_execScriptOnServer;

	}];

	computer addAction ["Reset timer", {

		["script\server\control\resetTimer.sqf"] call TGV_fnc_execScriptOnServer;

	}];

};