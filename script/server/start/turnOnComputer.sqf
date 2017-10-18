// Allumer l'ordinateur
computerOn = true;
publicVariable "computerOn";

// Initialisation du registre et de la variable timer
call TGV_fnc_initActionRegistry;
timer = 60;
publicVariable "timer";

// Initialise le trigger pour lancer le chrono (timer = timer - 1 toutes les secondes)
_timerAction = ["execVM 'script\server\compute\updateTimer.sqf'", 1] call TGV_fnc_repeatedAction;
// Enregistrement dans le registre
["timerAction", _timerAction] call TGV_fnc_registerAction;
// Le trigger est mis en pause tout de suite
["timerAction"] call TGV_fnc_stopAction;

// Envoyer à tous les clients la réponse
["script\client\computerStarted.sqf", true] call TGV_fnc_execScriptOnClients;