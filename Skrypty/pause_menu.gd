extends Control

var Pause_Menu : bool = false

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Pause Menu"):
		Pause_Menu = not Pause_Menu
	if Pause_Menu and get_tree().paused:
		$".".show()
		get_tree().paused = true
	else:
		$".".hide()
		get_tree().paused = false
		
