extends Node2D

@onready var Animation_Info_Panel = $"../Crafting Info Panel Animation"
@onready var Close_Timer = $"Info Panel/Timer"


func _ready() -> void:
	$"Info Panel".hide()

func _on_timer_timeout() -> void:
	Close_Timer.stop()
	$"Info Panel".hide()
	


####################
#     Planks	   #
####################

func _on_plank_craft_button_mouse_entered() -> void:
	Animation_Info_Panel.play("Crafting Info Panel")
	$"Materials/Plank Craft Button/Crafting Information/Wood".show()
	$"Info Panel".show()

func _on_plank_craft_button_mouse_exited() -> void:
	$"Materials/Plank Craft Button/Crafting Information/Wood".hide()
	Animation_Info_Panel.play("Crafting Info Panel Closing")
	Close_Timer.start()

####################
#    Workbench	   #
####################

func _on_workbench_craft_button_mouse_entered() -> void:
	Animation_Info_Panel.play("Crafting Info Panel")
	$"Other/Workbench Craft Button/Crafting Information".show()
	$"Info Panel".show()


func _on_workbench_craft_button_mouse_exited() -> void:
	Animation_Info_Panel.play("Crafting Info Panel Closing")
	$"Other/Workbench Craft Button/Crafting Information".hide()
	Close_Timer.start()

####################
#    Wooden Axe	   #
####################

func _on_wooden_axe_craft_button_mouse_entered() -> void:
	Animation_Info_Panel.play("Crafting Info Panel")
	$"Tools/Wooden Axe Craft Button/Crafting Information".show()
	$"Info Panel".show()


func _on_wooden_axe_craft_button_mouse_exited() -> void:
	Animation_Info_Panel.play("Crafting Info Panel Closing")
	$"Tools/Wooden Axe Craft Button/Crafting Information".hide()
	Close_Timer.start()

####################
#  Wooden Pickaxe  #
####################

func _on_wooden_pickaxe_craft_button_mouse_entered() -> void:
	Animation_Info_Panel.play("Crafting Info Panel")
	$"Tools/Wooden Pickaxe Craft Button/Crafting information".show()
	$"Info Panel".show()


func _on_wooden_pickaxe_craft_button_mouse_exited() -> void:
	Animation_Info_Panel.play("Crafting Info Panel Closing")
	$"Tools/Wooden Pickaxe Craft Button/Crafting information".hide()
	Close_Timer.start()
