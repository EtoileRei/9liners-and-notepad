
#include "\a3\editor_f\data\scripts\dikCodes.h"

["STR_nln_Credentials_modName","nln_fire_for_effect_keybind_open", ("STR_nln_Settings_keybindOpenFireForEffect" call BIS_fnc_localize), { _this call nln_fire_for_effect_fnc_openMenu; }, {}, [DIK_F, [true, true, false]]] call CBA_fnc_addKeybind;

[
	"nln_fire_for_effect_enable",
	"CHECKBOX",
	("STR_nln_Settings_fireForEffectEnable" call BIS_fnc_localize),
	"STR_nln_Credentials_modName",
	true,
	1
] call CBA_Settings_fnc_init;
