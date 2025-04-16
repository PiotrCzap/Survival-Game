extends Node2D

@onready var Damage_Timer = $Cactus/Timer

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		Damage_Timer.start()


func _on_timer_timeout() -> void:
	Global.Player_Health -= 1


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		Damage_Timer.stop()
