extends Node

var Stone_Max_Drop = 3

func _ready():
	# Podłączanie sygnału dla wszystkich TextureButton
	for Stone in get_children():
		if Stone is TextureButton:
			Stone.connect("pressed", func(): _on_Stone_pressed(Stone))

func _on_Stone_pressed(Stone):
	print(Global.Stone_HP)
	if Global.Wooden_Pickaxe_Equipped == true:
		Global.Stone_HP -= 2
	if Global.Stone < Global.Stone_Item_Stack:
		if Global.Wooden_Pickaxe_Equipped == false:
			Global.Stone_HP -= 1
	if Global.Stone >= 16:
		Global.Stone = 16
		
	# Resetowanie zmiennej do 20, jeśli wyniesie 0
	if Global.Stone_HP <= 0:
		Stone.queue_free()
		Global.Stone_HP = 20
		Global.Stone += randi_range(1, Stone_Max_Drop)
		$"../../Player/Level Progress Bar".value += randi_range(1, 2)
		
