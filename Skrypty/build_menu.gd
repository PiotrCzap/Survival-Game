extends Control

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Build Menu"):
		Global.build_menu_visible = not Global.build_menu_visible

		if Global.build_menu_visible:
			$".".show()
		else:
			$".".hide()


func _on_oak_wood_pillar_build_button_pressed() -> void:
	$".".hide()
	Global.build_mode = true
	Global.Oak_Wood_Pillar_Placement_Mode = true


func _on_plank_block_build_button_pressed() -> void:
	$".".hide()
	Global.build_mode = true
	Global.Plank_Block_Placement_Mode = true


func _on_wood_floor_build_button_pressed() -> void:
	$".".hide()
	Global.build_mode = true
	Global.Wood_Floor_Placement_Mode = true
