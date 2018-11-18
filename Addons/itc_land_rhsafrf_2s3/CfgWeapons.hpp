class CfgWeapons {
	class mortar_155mm_AMOS;
	class RHS_Weap_2a33: mortar_155mm_AMOS  { class Single1; };
	class itc_land_rhs_weap_2a33: RHS_Weap_2a33 {
		scope = 1;
		displayName = "2A33";
		autoReload = 0;
		modes[] = {"Single"};
		reloadTime = 1;
		magazineReloadTime = 6;	
		#include "CfgWeapons_howitzers_magazines2A33.hpp"
		class Single: Single1 {
			displayName = "";
			artilleryCharge = 1;
			reloadTime = 6;			
		};
		class EventHandlers {
				class itc_land_veh_weapons {
						fired = "_this call itc_land_veh_weapons_fnc_fired;";
				};
		};
	};
		

};