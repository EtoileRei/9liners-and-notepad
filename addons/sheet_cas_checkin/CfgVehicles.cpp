
class Man;
class CAManBase : Man
{
	class ACE_SelfActions
	{
		class nln_sheets
		{
			class cas_checkin
			{
				displayName = ["STR_nln_Interaction_selfActionCASCheckIn"] call BIS_fnc_localize;
				condition = "nln_cas_checkin_enable";
				statement = "";

				class edit
				{
					displayName = ["STR_nln_Interaction_selfActionEdit"] call BIS_fnc_localize;
					condition = "nln_cas_checkin_enable";
					statement = "call nln_cas_checkin_fnc_openMenu;";
				};

				class show
				{
					displayName = ["STR_nln_Interaction_selfActionShow"] call BIS_fnc_localize;
					condition = "nln_cas_checkin_enable && (isNull (uiNamespace getVariable ['nln_cas_checkin', displayNull]))";
					statement = "call nln_cas_checkin_fnc_openBackground;";
				};

				class hide
				{
					displayName = ["STR_nln_Interaction_selfActionHide"] call BIS_fnc_localize;
					condition = "nln_cas_checkin_enable && !(isNull (uiNamespace getVariable ['nln_cas_checkin', displayNull]))";
					statement = "call nln_cas_checkin_fnc_closeBackground;";
				};
			};
		};
	};
};
