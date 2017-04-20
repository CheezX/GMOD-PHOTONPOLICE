AddCSLuaFile()

local VehicleName = "Volvo S60 R Clarkson County"

local EMV = {}

EMV.Siren = 48
EMV.Skin = 2
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- fbumper
	{ 2, 0 }, -- rbumper
	{ 3, 1 }, -- skirt
	{ 4, 0 }, -- hood
	{ 5, 0 }, -- wing
	{ 6, 0 }, -- clamped1
	{ 7, 0 }, -- clamped2
}

EMV.Auto = {
	{
		ID = "Federal Signal Vision SLR",
		Scale = 1,
		Pos = Vector( 0, -10, 87 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -22, 13, 76 ),
		Ang = Angle( 0, 90, 0 ),
		Phase = "C"
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 22, 13, 76 ),
		Ang = Angle( 0, 90, 0 ),
		Phase = "D"
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -20, -55, 75.5 ),
		Ang = Angle( 0, 270, 0 ),
		Phase = "NYA"
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 20, -55, 75.5 ),
		Ang = Angle( 0, 270, 0 ),
		Phase = "NYB"
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 15, 41.3 ),
		Ang = Angle( 0, 0, -10 )
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
	Model = "models/lonewolfie/volvo_s60.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/volvo_stock.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
