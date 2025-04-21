extends Node


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.Planks < 3:
		$"../Crafting Information/Planks/Label".modulate = Color.RED
	else:
		$"../Crafting Information/Planks/Label".modulate = Color.GREEN
		
	if Global.Sticks < 4:
		$"../Crafting Information/Sticks/Label".modulate = Color.RED
	else:
		$"../Crafting Information/Sticks/Label".modulate = Color.GREEN
	
func _on_workbench_craft_button_pressed() -> void:
	if Global.Planks >= 3 and Global.Sticks >= 4:
		Global.Planks -= 3
		Global.Sticks -= 4
		Global.Workbench_Placement_Mode = true
	else:
		Global.Workbench_Placement_Mode = false
