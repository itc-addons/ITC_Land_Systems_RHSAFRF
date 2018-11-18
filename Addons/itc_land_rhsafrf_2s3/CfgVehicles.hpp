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

class CfgVehicles {
	class LandVehicle;
	class Tank: LandVehicle {
        class ACE_SelfActions;	
	};
	class Tank_F: Tank {
        class ACE_SelfActions: ACE_SelfActions {};		
		class Turrets {
			class MainTurret;
		};
		class AnimationSources;
	};
	class rhs_2s3tank_base: Tank_F {
        class ACE_SelfActions: ACE_SelfActions {};		
		class Turrets: Turrets {
				class MainTurret: MainTurret {};
		};
		class AnimationSources: AnimationSources {};
	};
	class rhs_2s3_tv: rhs_2s3tank_base {
        class ACE_SelfActions: ACE_SelfActions {};		
		class Turrets: Turrets {
				class MainTurret: MainTurret {};
		};
		class AnimationSources: AnimationSources {};		
	};
	
	class itc_land_rhsafrf_2s3_tv: rhs_2s3_tv {
		scopeCurator = 2;
		displayname = "2S3 mod. 0 Akatsiya 2";
        class ACE_SelfActions: ACE_SelfActions {
            class ITC_Land_SPHammohandler {
                displayName = "Open Ammo Handling Interface";
                condition = "( gunner _target ) == ACE_Player";
                statement = "createDialog 'ITC_Land_SPHammohandler'";
            };	
			class ITC_Land_CommanderTablet {
				displayName = "Open Mounted Tablet";
				icon = "\itc_land_tablet\UI\arty-icon.paa";
				condition = "([_target] call itc_land_tablet_fnc_vehicleHasTablet) && (( commander _target ) == ACE_Player)";
				statement = "[_target] call itc_land_tablet_fnc_openVehicleTablet";
			};			
		};				
		artilleryScanner = 0;
		class itc_land {
			tabletInterfaces[] = {"spg"};
			mountedTablet = "itc_land_tablet_spg";
			class fcs {
				tableList = "g_152";
			};
		};
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscAltGunnerSightSPH";
				weapons[] = {"itc_land_rhs_weap_2a33"};
				magazines[] = {
					mag_24("itc_land_2a33hex"),
					mag_4("itc_land_2a33hex"),
					mag_5("itc_land_2a33smo"),
					mag_5("itc_land_2a33ill"),
					mag_3("itc_land_2a33icm"),									
					mag_3("itc_land_2a33lgm")
				};
				lockWhenVehicleSpeed = 1;
				maxHorizontalRotSpeed = "((360/30)/45)";
			};
		};
		class AnimationSources: AnimationSources {};				
	};

};
