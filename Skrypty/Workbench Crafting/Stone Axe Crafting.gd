extends Node


func _process(delta: float) -> void:
	if Global.Stone < 3:
		$"../Crafting Informations/Stone/Label".modulate = Color.RED
	elif Global.Stone >= 3:
		$"../Crafting Informations/Stone/Label".modulate = Color.GREEN
	if Global.Sticks < 2:
		$"../Crafting Informations/Sticks/Label".modulate = Color.RED
	elif Global.Sticks >= 2:
		$"../Crafting Informations/Sticks/Label".modulate = Color.GREEN


func _on_stone_axe_craft_button_pressed() -> void:
	if Global.Stone_Axe == 0:
		if Global.Stone >= 3 and Global.Sticks >= 2:
			Global.Stone -= 3
			Global.Sticks -= 2
			Global.Stone_Axe += 1
		if Global.Stone_Axe == 1:
			pass
