extends Node
var player_direction:Vector2

enum Tools{
	None,
	AxeWood,
	TillGround,
	WaterCrops,
	PlantCron,
	PlantTomato
}
var current_tool:Tools=Tools.WaterCrops
