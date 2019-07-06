class NewTurret;

class CfgVehicles {
	class LandVehicle;
	class StaticWeapon: LandVehicle {
		class Turrets {
			class MainTurret: NewTurret {};
		};
	};
	class StaticCannon: StaticWeapon {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class rhs_D30_base: StaticCannon {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class rhs_D30_msv: rhs_D30_base {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_d30_msv: rhs_D30_msv {
		displayname = "D30 mod. 0";
		scopeCurator = 2;
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
	};
	class rhs_D30_vdv: rhs_D30_base {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_d30_vdv: rhs_D30_vdv {
		displayname = "D30 mod. 0";
		scopeCurator = 2;
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
	};
	class rhs_D30_vmf: rhs_D30_base {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_d30_vmf: rhs_D30_vmf {
		displayname = "D30 mod. 0";
		scopeCurator = 2;
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
	};
	class rhs_D30_ins: rhs_D30_base {
		class Turrets: Turrets {
			class MainTurret: MainTurret {};
		};
	};
	class itc_land_rhsafrf_d30_ins: rhs_D30_ins {
		displayname = "D30 mod. 0";
		scopeCurator = 2;
		class Turrets: Turrets {
			class MainTurret: MainTurret {
				turretInfoType = "ITC_Land_RscGunnerSightBasic";
			};
		};
	};
};
