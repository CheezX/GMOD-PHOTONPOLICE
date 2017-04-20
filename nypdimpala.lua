AddCSLuaFile()

local VehicleName = "Chevy Impala NYPD"

local EMV = {}

EMV.Siren = 3
EMV.Skin = 3
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Taxi_Sign
	{ 2, 0 }, -- Equiptment
	{ 3, 1 }, -- Taxi_Badges
	{ 4, 0 }, -- Fbumper
	{ 5, 0 }, -- Rbumper
	{ 6, 0 }, -- Front_window_lights
	{ 7, 0 }, -- Rear_window_lights
	{ 8, 0 }, -- Bullbar
	{ 9, 0 }, -- Laptop
	{ 10, 0 }, -- Lamp
	{ 11, 0 }, -- Lightbar
	{ 12, 0 }, -- Numberplate
	{ 13, 0 }, -- Antenne
	{ 14, 0 }, -- ALPR
	{ 15, 0 }, -- Wheels
	{ 16, 0 }, -- clamped1
}

EMV.Auto = {
	{
		ID = "Federal Signal Vision SLR",
		Scale = 1,
		Pos = Vector( 0, -10, 73 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 19, -53, 61 ),
		Ang = Angle( 0, 270, 0 ),
		Phase = "NYA"
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -19, -53, 61 ),
		Ang = Angle( 0, 270, 0 ),
		Phase = "NYB"
	}
}


EMV.Sequences = {
	Sequences = {
		{ Name = "STOPPED", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "PULL OVER", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "EMERGENCY", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Cheez's Cars",
	Author = "cheez",
	Model = "models/lonewolfie/chev_impala_09.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/chev_impala_09.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
