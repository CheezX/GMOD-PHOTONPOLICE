AddCSLuaFile()

local VehicleName = "BMW M1 1981 Police"

local EMV = {}

EMV.Siren = 44
EMV.Skin = 0
EMV.Color = Color(0,31,127)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- wing
	{ 2, 0 }, -- miscparts
	{ 3, 1 }, -- headlight
}

EMV.Auto = {
	{
		ID = "Maxim Halogen",
		Scale = 1,
		Pos = Vector( 0, 0, 57.5 ),
		Ang = Angle( 0, 90, 0 )
	}
}


EMV.Sequences = {
	Sequences = {
		{ Name = "LIGHTS", Stage = "M1", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "WARNING", Stage = "L", Components = {}, Disconnect = {} }
}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Cheez's Cars",
	Author = "cheez",
	Model = "models/tdmcars/bmwm1.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/m1.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
