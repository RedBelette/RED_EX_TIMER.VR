// Ce script est exécuté sur le serveur au démarrage de la mission

/*["script\briefing\initBriefing.sqf", true] call TGV_fnc_execScriptOnClients;*/

computerOn = false;
publicVariable "computerOn";

["script\client\initClient.sqf", true] call TGV_fnc_execScriptOnClients;
