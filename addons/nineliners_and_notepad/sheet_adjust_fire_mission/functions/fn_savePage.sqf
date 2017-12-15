
private _key = (profileNamespace getVariable ["nln_adjust_fire_mission_currentPage", -1]);

private _values = [
	profileName,
	(ctrlText 1400),
	(ctrlText 1401),
	(ctrlText 1402),
	(ctrlText 1403),
	(if ((ctrlText 1201) == "") then { false; } else { true; }),
	(if ((ctrlText 1202) == "") then { false; } else { true; }),
	(if ((ctrlText 1203) == "") then { false; } else { true; }),
	(if ((ctrlText 1204) == "") then { false; } else { true; }),
	(if ((ctrlText 1205) == "") then { false; } else { true; }),
	(if ((ctrlText 1206) == "") then { false; } else { true; }),
	(if ((ctrlText 1207) == "") then { false; } else { true; }),
	(if ((ctrlText 1208) == "") then { false; } else { true; }),
	(ctrlText 1404),
	(ctrlText 1405),
	(ctrlText 1406),
	(ctrlText 1407),
	(ctrlText 1408),
	(ctrlText 1409),
	(ctrlText 1410),
	(ctrlText 1411),
	(ctrlText 1412)
];

if (_key <= -1) then
{
	_key = (["adjust_fire_mission", _values] call nln_fnc_addPage);
	profileNamespace setVariable ["nln_adjust_fire_mission_currentPage", _key];
	private _pP = (["adjust_fire_mission", _key] call nln_fnc_getPagePosition);
	hint format["Page %1/%2", (_pP select 0), (_pP select 1)];
}
else
{
	["adjust_fire_mission", _key, _values] call nln_fnc_setPage;
};
