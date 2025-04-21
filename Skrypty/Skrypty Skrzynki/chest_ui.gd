extends Node2D

var Chest_max_Capacity = 1024
var Chest_Capacity = 0

# Items in Chest

var Coins_In_Chest = 0
var Stick_In_Chest = 0
var Wood_In_Chest = 0

func _process(delta: float) -> void:
	$"NinePatchRect/Chest Max Capacity".text = str(Chest_Capacity) + "/" + str(Chest_max_Capacity)
	$"NinePatchRect/Chest Inventory/Materials Category/Slot/Coin In Chest Label".text = str(Coins_In_Chest)
	$"NinePatchRect/Chest Inventory/Materials Category/Slot2/Stick In Chest Label2".text = str(Stick_In_Chest)
	$"NinePatchRect/Chest Inventory/Materials Category/Slot3/Wood In Chest Label3".text = str(Wood_In_Chest)


func _on_coin_texture_button_pressed() -> void:
	if Chest_Capacity >= Chest_max_Capacity:
		pass
	else:
		if Global.Coins >= 1:
			Chest_Capacity += 1
			Coins_In_Chest += 1
			Global.Coins -= 1
		
func _on_stick_texture_button_pressed() -> void:
	if Chest_Capacity >= Chest_max_Capacity:
		pass
	else:
		if Global.Sticks >= 1:
			Chest_Capacity += 1
			Stick_In_Chest += 1
			Global.Sticks -= 1
	

func _on_wood_texture_button_pressed() -> void:
	if Chest_Capacity >= Chest_max_Capacity:
		pass
	else:
		if Global.Wood >= 1:
			Chest_Capacity += 1
			Wood_In_Chest += 1
			Global.Wood -= 1
