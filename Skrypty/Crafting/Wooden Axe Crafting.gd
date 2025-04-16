extends Node

func _process(delta: float) -> void:
	if Global.Wood < 3:
		$"../Crafting Information/Wood/Item Wood".modulate = Color.RED
	else:
		$"../Crafting Information/Wood/Item Wood".modulate = Color.GREEN
	
	if Global.Sticks < 2:
		$"../Crafting Information/Sticks/Item Sticks".modulate = Color.RED
	else:
		$"../Crafting Information/Sticks/Item Sticks".modulate = Color.GREEN

func _on_wooden_axe_craft_button_pressed() -> void:
	if Global.Wooden_Axe == 0:
		if Global.Sticks >= 2 and Global.Wood >= 3:
			Global.Wood -= 3
			Global.Sticks -= 2
			Global.Wooden_Axe += 1
		if Global.Wooden_Axe == 1:
			pass
