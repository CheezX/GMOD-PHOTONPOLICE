AddCSLuaFile()

local VehicleName = "FHPD Crown Vic"

local EMV = {}

EMV.Siren = 3
EMV.Skin = 6
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- bumpers
	{ 2, 1 }, -- sign
	{ 3, 1 }, -- stuff
}

EMV.Auto = {
	{
		ID = "Federal Signal Arjent",
		Scale = .82,
		Pos = Vector( 0, 0, 73 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, -45, 64 ),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -9, 126, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 9, 126, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "B"
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
	Model = "models/tdmcars/crownvic_taxi.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/tdmcars/crownvic_taxi.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
