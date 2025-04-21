extends Node2D

var Save_file = ConfigFile.new()

func save():
	Save_file.set_value("Player", "PositionX", round($Player.position.x))
	Save_file.set_value("Player", "PositionY", round($Player.position.y))
	Save_file.set_value("Map", "Buildings", $"Building Tilemap Layer".tile_map_data)
	Save_file.set_value("Map", "World", $TileMapLayer.tile_map_data)
	Save_file.save("res://save.cfg")
	
func Load():
	var LoadSave = Save_file.load("res://save.cfg")
	if LoadSave == OK:
		$Player.position.x = Save_file.get_value("Player", "PositionX")
		$Player.position.y = Save_file.get_value("Player", "PositionY")
		$"Building Tilemap Layer".tile_map_data = Save_file.get_value("Map", "Buildings")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("save"):
		save()
	if Input.is_action_just_pressed("load"):
		Load()
