
#include "\a3\editor_f\data\scripts\dikCodes.h"

["STR_nln_Credentials_modName","nln_open_cas_check_in_key", ("STR_nln_Settings_keybindOpenCASCheckIn" call BIS_fnc_localize), { _this call nln_cas_checkin_fnc_openMenu; }, {}, [DIK_B, [true, true, false]]] call CBA_fnc_addKeybind;

[
	"nln_cas_checkin_enable",
	"CHECKBOX",
	("STR_nln_Settings_casCheckInEnable" call BIS_fnc_localize),
	"STR_nln_Credentials_modName",
	true,
	1
] call CBA_Settings_fnc_init;
