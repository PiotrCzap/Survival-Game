extends Node2D

var can_interact: bool = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		$Label.show()
		can_interact = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		$Label.hide()
		can_interact = false
		
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Interact") and can_interact == true:
		$"Chest UI".show()
	if can_interact == false:
		$"Chest UI".hide()
