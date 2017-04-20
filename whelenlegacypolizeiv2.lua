AddCSLuaFile()

local VehicleName = "Polizei Volvo Whelen Legacy V2"

local EMV = {}

EMV.Siren = 6
EMV.Skin = 1
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
		ID = "Whelen Legacy",
		Scale = 1,
		Pos = Vector( 0, -12, 86 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE"
	},
	{
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -7, 110, 29.5 ),
		Ang = Angle( 0, 0, 270 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 7, 110, 29.5 ),
		Ang = Angle( 0, 0, 270 ),
		Color1 = "BLUE",
		Phase = "B"
	}
}


EMV.Sequences = {
	Sequences = {
		{ Name = "REGULAR", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "URGENT", Stage = "M2", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "CRUISE", Stage = "C", Components = {}, Disconnect = {} },
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
