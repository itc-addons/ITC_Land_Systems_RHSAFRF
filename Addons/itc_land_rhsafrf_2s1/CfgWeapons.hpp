class CfgWeapons {
	class mortar_155mm_AMOS;
	class RHS_Weap_2a31: mortar_155mm_AMOS  { class Single1; };
	class itc_land_rhs_weap_2a31: RHS_Weap_2a31 {
		scope = 1;
		displayName = "2A31";
		autoReload = 0;
		modes[] = {"Single"};
		reloadTime = 1;
		magazineReloadTime = 6;
		#include "CfgWeapons_howitzers_magazines2A31.hpp"
		class Single: Single1 {
			displayName = "";
			artilleryCharge = 1;
			reloadTime = 6;
		};
		class EventHandlers {
			class itc_land_rhsafrf_2s1 {
					fired = "_this call itc_land_veh_weapons_fnc_fired;";
			};
			class itc_land_sphammohandler {
					fired = "_this call itc_land_SPHammoHandler_fnc_firedEH;";
			};
		};
	};


};
