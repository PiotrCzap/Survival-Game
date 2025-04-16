extends Node

func _process(delta: float) -> void:
	if Global.Wood < 2:
		$"../Crafting information/Wood/Item Wood".modulate = Color.RED
	else:
		$"../Crafting information/Wood/Item Wood".modulate = Color.GREEN
	
	if Global.Sticks < 1:
		$"../Crafting information/Wood/Item Wood".modulate = Color.RED
	else:
		$"../Crafting information/Wood/Item Wood".modulate = Color.GREEN
	
