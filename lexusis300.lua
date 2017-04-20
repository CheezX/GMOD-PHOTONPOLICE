AddCSLuaFile()

local VehicleName = "Lexus IS 300 Police"

local EMV = {}

EMV.Siren = 3
EMV.Skin = 0
EMV.Color = Color(0,0,0)

EMV.BodyGroups = {
	{ 0, 0 }, -- Lexus
	{ 1, 0 }, -- IS300
	{ 2, 0 }, -- 
	{ 3, 0 }, -- 
	{ 4, 0 }, -- frontbumper
	{ 5, 0 }, -- rearbumper
	{ 6, 0 }, -- skirt
	{ 7, 0 }, -- hood
	{ 8, 0 }, -- wing
	{ 9, 0 }, -- wheel
}

EMV.Auto = {
	{
		ID = "Federal Signal Valor",
		Scale = .83,
		Pos = Vector( 0, -10, 70 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 17, -52, 61 ),
		Ang = Angle( 0, 270, 0 ),
		Phase = "NYA"
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -17, -52, 61 ),
		Ang = Angle( 0, 270, 0 ),
		Phase = "NYB"
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
	Model = "models/tdmcars/lex_is300.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/lex_is300.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
