AddCSLuaFile()

local VehicleName = "340i Police Unit"

local EMV = {}

EMV.Siren = 44
EMV.Skin = 0
EMV.Color = Color(0,0,0)

EMV.BodyGroups = {
	{ 0, 0 }, -- BMW
	{ 1, 0 }, -- 340i
	{ 2, 0 }, -- 
	{ 3, 0 }, -- 
	{ 4, 0 }, -- 
	{ 5, 0 }, -- 
	{ 6, 0 }, -- 
	{ 7, 0 }, -- 
	{ 8, 0 }, -- 
	{ 9, 0 }, -- 
	{ 10, 0 }, -- 
}

EMV.Auto = {
		{
		ID = "Federal Signal Integrity",
		Scale = .90,
		Pos = Vector( 0, -11, 71 ),
		Ang = Angle( 0, 90, 0 )
	},
		{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 17, -57, 60 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A"
	},
		{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -17, -57, 60 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "RED",
		Color2 = "RED",
		Phase = "B"
	},
		{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, -74, 53 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
	},
		{
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, 16, 59.5 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "RED",
		Color2 = "BLUE"
	},
		{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 100, 28 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE"
	},
		{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 100, 28 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED"
	},
		{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 34.2, 47.5 ),
		Ang = Angle( 0, 0, 75 )
	}
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
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
	Model = "models/tdmcars/bmw_340i.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/bmw_340i.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
