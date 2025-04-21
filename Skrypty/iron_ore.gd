extends Node2D

@onready var Iron_Ore_Respawn_Timer: Timer = $Timer

func _on_texture_button_pressed() -> void:
	Global.Iron_Ore_HP -= 1


func _process(delta: float) -> void:
	if Global.Iron_Ore_HP <= 0:
		$".".position = Vector2(1000000, 0)
		
