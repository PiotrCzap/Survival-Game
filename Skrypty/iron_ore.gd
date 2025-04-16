extends Node

func _on_texture_button_pressed() -> void:
	for iron in get_children():
		if iron is TextureButton:
			iron.connect("pressed", func(): _on_iron_ore_pressed(iron))


func _on_iron_ore_pressed(iron):
	Global.Iron_Ore_HP -= 1
	if Global.Iron_Ore_HP == 0:
		queue_free()
		Global.Iron_Ore_HP = 30
