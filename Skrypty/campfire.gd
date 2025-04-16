extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		$"Area2D/Damage Timer".start()

func _on_damage_timer_timeout() -> void:
	if $"Area2D/Damage Timer".timeout:
		for i in range(10):
			Global.Player_Health -= 1
