extends Node2D

var can_interact: bool = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		can_interact = true
		$"Sprite2D/Interact Label".show()


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		can_interact = false
		$"Sprite2D/Interact Label".hide()


func _process(delta: float) -> void:
	if can_interact and Input.is_action_just_pressed("Interact"):
		Global.Player_in_Cave = true
			
