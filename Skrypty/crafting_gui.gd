extends Node2D

var Crafting_visible = false
@onready var Crafting = $"."
@onready var click_sound: AudioStreamPlayer2D = $"Button Click Sound"


func _ready() -> void:
	$".".visible = false
	
	
func _input(event: InputEvent) -> void:
	
	if Input.is_action_just_pressed("Crafting_Toggle"):
		Crafting_visible = not Crafting_visible
	if Crafting_visible:
		Crafting.show()
	else:
		Crafting.hide()

func _on_tools_menu_pressed() -> void:
	click_sound.play()
	$"NinePatchRect/All Craftings/Tools".show()
	$"NinePatchRect/All Craftings/Materials".hide()
	$"NinePatchRect/All Craftings/Other".hide()


func _on_materials_menu_pressed() -> void:
	click_sound.play()
	$"NinePatchRect/All Craftings/Tools".hide()
	$"NinePatchRect/All Craftings/Other".hide()
	$"NinePatchRect/All Craftings/Materials".show()


func _on_other_menu_pressed() -> void:
	click_sound.play()
	$"NinePatchRect/All Craftings/Tools".hide()
	$"NinePatchRect/All Craftings/Materials".hide()
	$"NinePatchRect/All Craftings/Other".show()
