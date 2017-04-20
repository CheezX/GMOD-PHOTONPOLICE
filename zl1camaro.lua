AddCSLuaFile()

local VehicleName = "Camaro ZL1 Police"

local EMV = {}

EMV.Siren = 3
EMV.Skin = 0
EMV.Color = Color(0,0,0)

EMV.BodyGroups = {
	{ 0, 0 }, -- Chevrolet
	{ 1, 0 }, -- Camaro
	{ 2, 0 }, -- ZL1
	{ 3, 0 }, -- 
	{ 4, 0 }, -- front bumper
	{ 5, 0 }, -- front lights
	{ 6, 0 }, -- wing
	{ 7, 0 }, -- wheel
}

EMV.Auto = {
	{
		ID = "Federal Signal Vision SLR",
		Scale = 1,
		Pos = Vector( 0, -10, 70 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 17, 13, 59 ),
		Ang = Angle( 0, 90, 0 ),
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -17, 13, 59 ),
		Ang = Angle( 0, 90, 0 ),
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 15, 97.5, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -15, 97.5, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen SmartArrow Messenger",
		Scale = 1,
		Pos = Vector( 0, -60, 55 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 10, -111.8, 33 ),
		Ang = Angle( 270, 90, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -10, -111.8, 33 ),
		Ang = Angle( 270, 90, 0 ),
		Color1 = "RED",
		Phase = "B"
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
	Model = "models/tdmcars/chev_camzl1.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/che_camarozl1.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
