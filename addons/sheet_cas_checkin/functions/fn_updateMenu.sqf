
params [
	["_id", -1, [0]]
];

private _values = (["cas_checkin", _id] call nln_main_fnc_getPage);
if ((count _values) != 10) then
{
	_values = [profileName, "", "", "", "", "", "", "", "", ""];
};

for "_i" from 1 to 9 do
{
	ctrlSetText [(1399 + _i), (_values select _i)];
};
