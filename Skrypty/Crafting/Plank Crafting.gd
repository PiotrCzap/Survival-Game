extends Node

func _process(delta: float) -> void:
	if Global.Wood < 1:
		$"../Crafting Information/Wood/Item Wood".modulate = Color.RED
	elif Global.Wood >= 1:
		$"../Crafting Information/Wood/Item Wood".modulate = Color.GREEN

func _on_plank_craft_button_pressed() -> void:
	if Global.Planks <= Global.Planks_Item_Stack:
		if Global.Wood >= 1:
			Global.Wood -= 1
			Global.Planks += 2
		elif Global.Wood <= 1:
			pass
	
