
params [
    ["_type", "", [""]],
    ["_id", -1, [0]],
    ["_values", [], [[]]]
];

if !(_type in nln_availableTypes) exitWith { false; };
if (_id <= -1) exitWith { false; };
if ((count _values) <= 0) exitWith { false; };

private _namespaceVar = (format["nln_pages_%1", _type]);
private _hash = (profileNamespace getVariable [_namespaceVar, []]);

if !([_hash] call CBA_fnc_isHash) exitWith { false; };

profileNamespace setVariable [_namespaceVar, ([_hash, _id, _values] call CBA_fnc_hashSet)];
true;
