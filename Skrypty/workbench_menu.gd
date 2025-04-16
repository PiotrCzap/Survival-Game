extends Node2D

@onready var Workbench_Info_Panel = $"NinePatchRect/Workbench Info Panel"
@onready var Workbench_Animations = $"NinePatchRect/Workbench Animations"
@onready var Close_Timer = $"NinePatchRect/Workbench Info Panel/Timer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Workbench_Info_Panel.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.Workbench_GUI_visible == true:
		$".".show()
	else:
		$".".hide()

func _on_stone_axe_craft_button_mouse_entered() -> void:
	$"NinePatchRect/Tools Menu Craftings/Stone Axe Craft Button/Crafting Informations".show()
	Workbench_Info_Panel.show()
	Workbench_Animations.play("Workbench Info Panel Open")


func _on_stone_axe_craft_button_mouse_exited() -> void:
	$"NinePatchRect/Tools Menu Craftings/Stone Axe Craft Button/Crafting Informations".hide()
	Workbench_Animations.play("Workbench Info Panel Close")
	Close_Timer.start()


func _on_timer_timeout() -> void:
	Close_Timer.stop()
	Workbench_Info_Panel.hide()
