extends Node2D

var Stick_Max_Drop = 2
var Wood_Max_Drop = 3
var Wood_Saplings_Max_Drop = 3
var Apple_Max_Drop = 3
@onready var Wood_Sound = $"../Tree Cutting Sound"

func _ready():
	# Podłączanie sygnału dla wszystkich TextureButton
	for tree in get_children():
		if tree is TextureButton:
			tree.connect("pressed", func(): _on_tree_pressed(tree))

func _on_tree_pressed(tree):
	Wood_Sound.play()
	print(Global.Tree_HP)
	if Global.Wood < Global.Wood_Item_Stack:
		Global.Tree_HP -= 1
	if Global.Wooden_Axe == 1:		
		if Global.Wooden_Axe_Equipped == true:
			Global.Tree_HP -= 2
	
	
	# Sprawdzenie, czy HP osiągnęło 0
	if Global.Tree_HP <= 0:
		tree.queue_free()  # Usunięcie drzewa
		Global.Tree_HP = 10  # Resetowanie HP do 10
		Global.Sticks += randi_range(1, Stick_Max_Drop)
		Global.Wood += randi_range(1, Wood_Max_Drop)
		Global.Wood_Saplings += randi_range(1, Wood_Saplings_Max_Drop)
		Global.Apples += randi_range(1, Apple_Max_Drop)
		$"../../Player/Level Progress Bar".value += randi_range(2, 3)


func _process(delta: float) -> void:
	if Global.Wood >= 32:
		Global.Wood = 32
	if Global.Apples >= 32:
		Global.Apples = 32
