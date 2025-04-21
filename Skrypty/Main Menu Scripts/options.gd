extends Control



func _on_back_button_pressed() -> void:
	$AudioStreamPlayer2D.play()
	if $AudioStreamPlayer2D.finished:
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
