extends TextureProgressBar

func _process(delta: float) -> void:
	$Hunger.text = str(Global.Player_Hunger)
	value = Global.Player_Hunger
	

func _physics_process(delta: float) -> void:
	if Global.Player_Hunger == Global.Player_Hunger_Max:
		Global.Player_Hunger = 100
