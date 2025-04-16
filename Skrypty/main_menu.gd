extends Control


func _on_new_game_pressed() -> void:
	$AudioStreamPlayer2D.play()
	if $AudioStreamPlayer2D.finished:
		get_tree().change_scene_to_file("res://Scenes/game.tscn")


func _on_options_pressed() -> void:
	$AudioStreamPlayer2D.play()
	if $AudioStreamPlayer2D.finished:
		get_tree().change_scene_to_file("res://Scenes/options.tscn")


func _on_quit_pressed() -> void:
	$AudioStreamPlayer2D.play()
	if $AudioStreamPlayer2D.finished:
		get_tree().quit()
