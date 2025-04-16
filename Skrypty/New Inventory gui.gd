extends Node2D

@onready var Click_Sound: AudioStreamPlayer2D = $"Button Click Sound"

# Materials Menu Info Panels
@onready var Coin_Info_Panel = $"Materials Menu/Materials Menu Button/Items/Coin Slot/Coin Item/Coin Item Info"
@onready var Stick_Info_Panel =	$"Materials Menu/Materials Menu Button/Items/Stick Slot/Stick Item/Stick Item Info"
@onready var Wood_Info_Panel =	$"Materials Menu/Materials Menu Button/Items/Wood Slot/Wood Item/Wood Item Info"
@onready var Stone_Info_Panel =	$"Materials Menu/Materials Menu Button/Items/Stone Slot/Stone Item/Stone Item Info"
@onready var Planks_Info_Panel = $"Materials Menu/Materials Menu Button/Items/Planks Slot/Planks Item/Planks Item Info"

# Materials Menu Items Quantity
@onready var Coin_Quantity = $"Materials Menu/Materials Menu Button/Items/Coin Slot/Coin Item/Coin quantity"
@onready var Stick_Quantity = $"Materials Menu/Materials Menu Button/Items/Stick Slot/Stick Item/Stick quantity"
@onready var Wood_Quantity = $"Materials Menu/Materials Menu Button/Items/Wood Slot/Wood Item/Wood quantity"
@onready var Stone_Quantity = $"Materials Menu/Materials Menu Button/Items/Stone Slot/Stone quantity"
@onready var Planks_Quantity = $"Materials Menu/Materials Menu Button/Items/Planks Slot/Planks quantity"

# Tools Menu Info Panels
@onready var Wooden_Axe_Info_Panel = $"Tools Menu/Tools Menu Button/Tools/Wooden Axe Slot/Wooden Axe/Item Info"
@onready var Stone_Axe_Info_Panel = $"Tools Menu/Tools Menu Button/Tools/Stone Axe Slot/Stone Axe/Item Info"

# Tools Menu Items Quantity
@onready var Wooden_Axe_Quantity = $"Tools Menu/Tools Menu Button/Tools/Wooden Axe Slot/Wooden Axe/Axe quantity"
@onready var Stone_Axe_Quantity = $"Tools Menu/Tools Menu Button/Tools/Stone Axe Slot/Stone Axe/Stone Axe quantity"

# Food Menu Info Panels
@onready var Apple_Info_Panel = $"Food Menu/Food Menu Button/Food/Apple Slot/Apple/Info Panel"

##############################
# 	   Materials Menu        #
##############################

func _on_tools_menu_button_pressed() -> void:
	Click_Sound.play()
	$"Materials Menu/Materials Menu Button/Items".hide()
	$"Tools Menu/Tools Menu Button/Tools".show()
	$"Food Menu/Food Menu Button/Food".hide()
	
func _on_materials_menu_button_pressed() -> void:
	Click_Sound.play()
	$"Tools Menu/Tools Menu Button/Tools".hide()
	$"Materials Menu/Materials Menu Button/Items".show()
	$"Food Menu/Food Menu Button/Food".hide()

func _on_food_menu_button_pressed() -> void:
	Click_Sound.play()
	$"Tools Menu/Tools Menu Button/Tools".hide()
	$"Materials Menu/Materials Menu Button/Items".hide()
	$"Food Menu/Food Menu Button/Food".show()


func _on_inventory_backpack_mouse_entered() -> void:
	$"../Inventory Backpack/Panel".show()
	
func _on_inventory_backpack_mouse_exited() -> void:
	$"../Inventory Backpack/Panel".hide()

@onready var inventory = $"."
var inventory_visible = false

func _ready() -> void:
	inventory.hide()
	Coin_Info_Panel.hide()
	Stick_Info_Panel.hide()
	Wood_Info_Panel.hide()
	Stone_Info_Panel.hide()
	Planks_Info_Panel.hide()
	
func _process(delta: float) -> void:
	
	###########################
	#   	Tools Menu        #
	###########################
	
	Wooden_Axe_Quantity.text = str(Global.Wooden_Axe)
	Stone_Axe_Quantity.text = str(Global.Stone_Axe)
	
	###########################
	#     Materials  Menu     #
	###########################
	
	Coin_Quantity.text = str(Global.Coins)
	Stick_Quantity.text = str(Global.Sticks)
	Wood_Quantity.text = str(Global.Wood)
	Stone_Quantity.text = str(Global.Stone)
	
	###########################
	#     	 Food Menu        #
	###########################
	
	$"Food Menu/Food Menu Button/Food/Apple Slot/Apple/Apple Quantity".text = str(Global.Apples)
	
	if Input.is_action_just_pressed("Toggle_Inventory"):
		inventory_visible = not inventory_visible

		if inventory_visible:
			inventory.show()
		else:
			inventory.hide()
	
			
################################
#   	# On Mouse Entered	   #
################################


func _on_coin_item_mouse_entered() -> void:
	Coin_Info_Panel.show()
	
func _on_stick_item_mouse_entered() -> void:
	Stick_Info_Panel.show()

func _on_wood_item_mouse_entered() -> void:
	Wood_Info_Panel.show()
	
func _on_stone_item_mouse_entered() -> void:
	Stone_Info_Panel.show()
	
func _on_planks_item_mouse_entered() -> void:
	Planks_Info_Panel.show()
	

################################
#   	# On Mouse Exited      #
################################

func _on_coin_item_mouse_exited() -> void:
	Coin_Info_Panel.hide()

func _on_stick_item_mouse_exited() -> void:
	Stick_Info_Panel.hide()

func _on_wood_item_mouse_exited() -> void:
	Wood_Info_Panel.hide()

func _on_stone_item_mouse_exited() -> void:
	Stone_Info_Panel.hide()

func _on_planks_item_mouse_exited() -> void:
	Planks_Info_Panel.hide()
	
###########################
#   	Tools Menu        #
###########################

###########################
#   	Wooden Axe        #
###########################

func _on_wooden_axe_mouse_entered() -> void:
	Wooden_Axe_Info_Panel.show()


func _on_wooden_axe_mouse_exited() -> void:
	Wooden_Axe_Info_Panel.hide()
		

func _on_wooden_axe_pressed() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Wooden Axe Slot/Wooden Axe/Equip Button".show()


func _on_equip_button_pressed() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Wooden Axe Slot/Wooden Axe/Equip Button".hide()
	if Global.Wooden_Axe == 1:
		Global.Wooden_Axe_Equipped = not Global.Wooden_Axe_Equipped
		
		if Global.Wooden_Axe_Equipped == true:
			$"Tools Menu/Tools Menu Button/Tools/Wooden Axe Slot/Wooden Axe/Equip Button/Label".text = str("UNEQUIP")
		else:
			$"Tools Menu/Tools Menu Button/Tools/Wooden Axe Slot/Wooden Axe/Equip Button/Label".text = str("EQUIP")


###########################
#   Wooden Pickaxe        #
###########################

func _on_wooden_pickaxe_pressed() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Wooden Pickaxe Slot/Wooden Pickaxe/Wooden Pickaxe Equip Button".show()


func _on_wooden_pickaxe_mouse_entered() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Wooden Pickaxe Slot/Wooden Pickaxe/Item Info".show()


func _on_wooden_pickaxe_equip_button_pressed() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Wooden Pickaxe Slot/Wooden Pickaxe/Wooden Pickaxe Equip Button".hide()
	if Global.Wooden_Pickaxe == 1:
		Global.Wooden_Pickaxe_Equipped = not Global.Wooden_Pickaxe_Equipped
		if Global.Wooden_Pickaxe_Equipped == true:
			$"Tools Menu/Tools Menu Button/Tools/Wooden Pickaxe Slot/Wooden Pickaxe/Wooden Pickaxe Equip Button/Label".text = str("UNEQUIP")
		else:
			$"Tools Menu/Tools Menu Button/Tools/Wooden Pickaxe Slot/Wooden Pickaxe/Wooden Pickaxe Equip Button/Label".text = str("EQUIP")
	
func _on_wooden_pickaxe_mouse_exited() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Wooden Pickaxe Slot/Wooden Pickaxe/Item Info".hide()

###########################
#   	Stone Axe         #
###########################

func _on_stone_axe_mouse_entered() -> void:
	Stone_Axe_Info_Panel.show()

func _on_stone_axe_mouse_exited() -> void:
	Stone_Axe_Info_Panel.hide()
	
func _on_stone_axe_equip_button_pressed() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Stone Axe Slot/Stone Axe/Stone Axe Equip Button".hide()
	if Global.Stone_Axe == 1:
		Global.Stone_Axe_Equipped = not Global.Stone_Axe_Equipped
		
		if Global.Stone_Axe_Equipped == true:
			$"Tools Menu/Tools Menu Button/Tools/Stone Axe Slot/Stone Axe/Stone Axe Equip Button/Label".text = str("UNEQUIP")
		else:
			$"Tools Menu/Tools Menu Button/Tools/Stone Axe Slot/Stone Axe/Stone Axe Equip Button/Label".text = str("EQUIP")


func _on_stone_axe_pressed() -> void:
	$"Tools Menu/Tools Menu Button/Tools/Stone Axe Slot/Stone Axe/Stone Axe Equip Button".show()

###########################
#   	Food  Menu        #
###########################

###########################
#  	    	Apple         #
###########################

func _on_apple_mouse_entered() -> void:
	Apple_Info_Panel.show()

func _on_apple_mouse_exited() -> void:
	Apple_Info_Panel.hide()

func _on_apple_pressed() -> void:
	if Global.Apples > 0:
		Global.Apples -= 1
		Global.Player_Hunger += 1
