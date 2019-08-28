class NewTurret;

class CfgVehicles {
    class RHS_DShkM_Gun_Bag;
    class RHS_Podnos_Gun_Bag: RHS_DShkM_Gun_Bag { };
    class itc_land_rhsafrf_2b14_Gun_Bag: RHS_Podnos_Gun_Bag {
        displayName = "2B14 mod. 0 'Podnos' Gun Bag";
    };
    class Bag_Base;
    class Weapon_Bag_Base: Bag_Base {
        class assembleInfo;
    };
	class RHS_NSV_Tripod_Bag: Weapon_Bag_Base {
        class assembleInfo: assembleInfo {};
    };
    class RHS_DShkM_TripodHigh_Bag: RHS_NSV_Tripod_Bag {
        class assembleInfo: assembleInfo {};
    };
    class RHS_Podnos_Bipod_Bag: RHS_DShkM_TripodHigh_Bag {
        class assembleInfo: assembleInfo {};
    };
    class itc_land_rhsafrf_2b14_Bipod_Bag: RHS_Podnos_Bipod_Bag {
        displayName = "2B14 mod. 0 'Podnos' Bipod Bag";
        class assembleInfo: assembleInfo {
            displayName = "82mm Mortar";
            assembleTo = "itc_land_rhsafrf_2b14_msv";
            base[] = {"itc_land_rhsafrf_2b14_Gun_Bag"};
        };
    };
	class LandVehicle;
	class StaticWeapon: LandVehicle {
		class Turrets {
			class MainTurret: NewTurret {};
		};
	};
	class StaticMortar: StaticWeapon {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class rhs_2b14_82mm_Base: StaticMortar {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class rhs_2b14_82mm_msv: rhs_2b14_82mm_Base	{
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_2b14_msv: rhs_2b14_82mm_msv {
		displayname = "2B14 mod. 0";
		scopeCurator = 2;
		artilleryScanner = 0;
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
        class assembleInfo {
            primary = 0;
            base = "";
            assembleTo = "";
            dissasembleTo[] = {"itc_land_rhsafrf_2b14_Gun_Bag", "itc_land_rhsafrf_2b14_Bipod_Bag"};
            displayName = "";
        };
	};
    class rhs_2b14_82mm_vdv: rhs_2b14_82mm_Base	{
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_2b14_vdv: rhs_2b14_82mm_vdv {
		displayname = "2B14 mod. 0";
		scopeCurator = 2;
		artilleryScanner = 0;
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
        class assembleInfo {
            primary = 0;
            base = "";
            assembleTo = "";
            dissasembleTo[] = {"itc_land_rhsafrf_2b14_Gun_Bag", "itc_land_rhsafrf_2b14_Bipod_Bag"};
            displayName = "";
        };
	};
    class rhs_2b14_82mm_vmf: rhs_2b14_82mm_Base	{
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_2b14_vmf: rhs_2b14_82mm_vmf {
		displayname = "2B14 mod. 0";
		scopeCurator = 2;
		artilleryScanner = 0;
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
        class assembleInfo {
            primary = 0;
            base = "";
            assembleTo = "";
            dissasembleTo[] = {"itc_land_rhsafrf_2b14_Gun_Bag", "itc_land_rhsafrf_2b14_Bipod_Bag"};
            displayName = "";
        };
	};
    class rhs_2b14_82mm_ins: rhs_2b14_82mm_Base	{
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_2b14_ins: rhs_2b14_82mm_ins {
		displayname = "2B14 mod. 0";
		scopeCurator = 2;
		artilleryScanner = 0;        
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
        class assembleInfo {
            primary = 0;
            base = "";
            assembleTo = "";
            dissasembleTo[] = {"itc_land_rhsafrf_2b14_Gun_Bag", "itc_land_rhsafrf_2b14_Bipod_Bag"};
            displayName = "";
        };
	};
};
