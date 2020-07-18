/// Magazines macros definition ///

#define mag_2(a) a, a
#define mag_3(a) a, a, a
#define mag_4(a) a, a, a, a
#define mag_5(a) a, a, a, a, a
#define mag_6(a) a, a, a, a, a, a
#define mag_7(a) a, a, a, a, a, a, a
#define mag_8(a) a, a, a, a, a, a, a, a
#define mag_9(a) a, a, a, a, a, a, a, a, a
#define mag_10(a) a, a, a, a, a, a, a, a, a, a
#define mag_11(a) a, a, a, a, a, a, a, a, a, a, a
#define mag_12(a) a, a, a, a, a, a, a, a, a, a, a, a
#define mag_24(a) a, a, a, a, a, a, a, a, a, a, a, a,a, a, a, a, a, a, a, a, a, a, a, a
class NewTurret;

class CfgVehicles {
    class LandVehicle;
    class Car: LandVehicle {
        class ACE_SelfActions;	
	};
	class Car_F: Car {
		class ACE_SelfActions: ACE_SelfActions {};							
		class AnimationSources: AnimationSources {};				
	};	
	class Truck_F: Car_F {
		class ACE_SelfActions: ACE_SelfActions {};						
		class AnimationSources;
	};
	class RHS_Ural_BaseTurret: Truck_F {
		class ACE_SelfActions: ACE_SelfActions {};					
		class Turrets {
			class MainTurret: NewTurret {};		
		};
		class AnimationSources: AnimationSources {};		
	};
	class RHS_BM21_MSV_01: RHS_Ural_BaseTurret {
		class ACE_SelfActions: ACE_SelfActions {};								
		class AnimationSources: AnimationSources {
			class Missiles_revolving;
		};
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_bm21_msv: RHS_BM21_MSV_01 {
		
	};
	class itc_land_rhsafrf_bm21_vdv: itc_land_rhsafrf_bm21_msv {
		
	};
	class itc_land_rhsafrf_bm21_vmf: itc_land_rhsafrf_bm21_msv {
		
	};
	class itc_land_rhsafrf_bm21_vv: itc_land_rhsafrf_bm21_msv {
		
	};
};