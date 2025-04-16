extends TileMapLayer
	
func _input(event: InputEvent) -> void:
		

		#########################
		#       Workbench       #
		#########################

		if Global.Workbench_Placement_Mode == true and (Input.is_action_just_pressed("Build")):
			if Global.Workbench_Placement_Mode == true:
				set_cell(local_to_map(get_local_mouse_position()), 1, Vector2i(0,0), 1)
		if Global.Workbench_Placement_Mode == true and (Input.is_action_just_pressed("ESCAPE")):
			Global.Workbench_Placement_Mode = false
		
		########################
		#       Campfire       #
		########################
		if Global.Campfire_Placement_Mode == true and (Input.is_action_just_pressed("Build")):
			if Global.Campfire_Placement_Mode == true:
				set_cell(local_to_map(get_local_mouse_position()), 1, Vector2i(0,0), 2)
		if Global.Campfire_Placement_Mode == true and (Input.is_action_just_pressed("ESCAPE")):
			Global.Campfire_Placement_Mode = false





		###############################
		#       Oak Wood Pillar       #
		###############################

		if Global.Oak_Wood_Pillar_Placement_Mode == true and (Input.is_action_just_pressed("Build")):
			if Global.Oak_Wood_Pillar_Placement_Mode == true:
				if Global.Wood >= 1:
					Global.Wood -= 1
					set_cell(local_to_map(get_local_mouse_position()), 0, Vector2i(0,2), 0)
		if Global.Oak_Wood_Pillar_Placement_Mode == true and (Input.is_action_just_pressed("ESCAPE")):
			Global.Oak_Wood_Pillar_Placement_Mode = false
			
		###########################
		#       Plank Block       #
		###########################

		if Global.Plank_Block_Placement_Mode == true and (Input.is_action_just_pressed("Build")):
			if Global.Plank_Block_Placement_Mode == true:
				if Global.Planks >= 1:
					Global.Planks -= 1
					set_cell(local_to_map(get_local_mouse_position()), 0, Vector2i(0,0), 0)
		if Global.Plank_Block_Placement_Mode == true and (Input.is_action_just_pressed("ESCAPE")):
			Global.Plank_Block_Placement_Mode = false

		###########################
		#       Wood Floor       #
		###########################

		if Global.Wood_Floor_Placement_Mode == true and (Input.is_action_just_pressed("Build")):
			if Global.Wood_Floor_Placement_Mode == true:
				if Global.Planks >= 1:
					Global.Planks -= 1
					set_cell(local_to_map(get_local_mouse_position()), 0, Vector2i(0,1), 0)
		if Global.Wood_Floor_Placement_Mode == true and (Input.is_action_just_pressed("ESCAPE")):
			Global.Wood_Floor_Placement_Mode = false
