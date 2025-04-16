extends Node

var Player_Health: int = 100
var Player_Max_Health: int = 100
var Player_Hunger: int = 100
var Player_Hunger_Max: int = 100
var Player_in_Cave: bool = false
var Player_Cave_position: float = -30006.707


var Player_Level: int = 0
var Level: int = 0
var Player_Max_Level: int = 10

########################
#        Items         #
########################

var Coins: int = 0
var Wood: int = 0
var Sticks: int = 0
var Stone: int = 0
var Planks: int = 0
var Wood_Saplings: int = 0

########################
#      Workbench       #
########################

var Workbench: int = 0
var Workbench_GUI_visible: bool = false
var Workbench_Placement_Mode: bool = false

########################
#       Campfire       #
########################

var Campfire_Placement_Mode: bool = false

########################
#      Build Mode      #
########################

var build_mode: bool = false
var build_menu_visible: bool = false

##########################
#      Build Blocks      #
##########################

var Oak_Wood_Pillar_Placement_Mode: bool = false
var Plank_Block_Placement_Mode: bool = false
var Wood_Floor_Placement_Mode: bool = false

########################
#      Wooden Axe      #
########################

var Wooden_Axe: int = 0
var Wooden_Axe_Equipped: bool = false
var Wooden_Axe_Durability: int = 100

########################
#     Wooden Pickaxe   #
########################

var Wooden_Pickaxe: int = 0
var Wooden_Pickaxe_Equipped: bool = false
var Wooden_Pickaxe_Durability: int = 100

########################
#      Cave Enters     #
########################

var Cave_1_Enter: bool = false
var Cave_2_Enter: bool = false
var Cave_3_Enter: bool = false

########################
#       Stone Axe      #
########################

var Stone_Axe: int = 0
var Stone_Axe_Equipped: bool = false
var Stone_Axe_Durabillity: int = 200

########################
#        Food          #
########################

var Apples: int = 0

########################
#         HP           #
########################

var Tree_HP: int = 10
var Stone_HP: int = 20
var Iron_Ore_HP: int = 30

########################
#    Item EQ Stack     #
########################

var Wood_Item_Stack: int = 32
var Sticks_Item_Stack: int = 32
var Stone_Item_Stack: int = 32
var Planks_Item_Stack: int = 32
var Wood_Saplings_Item_Stack: int = 32
var Apples_Item_Stack: int = 32

var Inventory_Items_Limit_Current: int = 0
var Inventory_Items_Limit: int = 128

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("save"):
		Save()
	if Input.is_action_just_pressed("load"):
		LoadData()


var save_path = "user://save.save"

func LoadData():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		Wood = file.get_var(Wood)
		Sticks = file.get_var(Sticks)
		Planks = file.get_var(Planks)
		Player_Health = file.get_var(Player_Health)
		Stone = file.get_var(Stone)
		Apples = file.get_var(Apples)
		Wooden_Axe = file.get_var(Wooden_Axe)
		Player_Level = file.get_var(Player_Level)
		
	
func Save():
	var file = FileAccess.open(save_path , FileAccess.WRITE)
	file.store_var(Planks)
	file.store_var(Player_Health)
	file.store_var(Player_Level)
	file.store_var(Stone)
	file.store_var(Wooden_Axe)
	file.store_var(Apples)
	file.store_var(Wood)
	file.store_var(Sticks)
