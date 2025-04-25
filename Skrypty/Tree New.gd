extends Node2D

var Stick_Max_Drop: int = 2
var Wood_Max_Drop: int = 3
var Wood_Saplings_Max_Drop: int = 3
var Apple_Max_Drop: int = 3

var Tree_HP: int = 10
var Item_FullL: bool = false

@onready var Wood_Sound = $"../Tree Cutting Sound"

func _ready():
	# Podłączanie sygnału dla wszystkich TextureButton
	for tree in get_children():
		if tree is TextureButton:
			tree.connect("pressed", func(): _on_tree_pressed(tree))

func _on_tree_pressed(tree):
	Wood_Sound.play()
	print(Tree_HP)
	if Global.Wood < Global.Wood_Item_Stack:
		Tree_HP -= 1
	if Global.Wooden_Axe == 1:
		if Global.Wooden_Axe_Equipped == true:
			Tree_HP -= 2
	
	
	# Sprawdzenie, czy HP osiągnęło 0
	if Tree_HP <= 0:
		tree.queue_free()  # Usunięcie drzewa
		Tree_HP = 10  # Resetowanie HP do 10
		if Global.Sticks < 32:
			Global.Sticks += randi_range(1, Stick_Max_Drop)
		if Global.Wood < 32:
			Global.Wood += randi_range(1, Wood_Max_Drop)
		Global.Wood_Saplings += randi_range(1, Wood_Saplings_Max_Drop)
		if Global.Apples < 32:
			Global.Apples += randi_range(1, Apple_Max_Drop)
		$"../../Player/Level Progress Bar".value += randi_range(2, 3)
		if Global.Wood >= 32:
			Set_Wood()
		if Global.Sticks >= 32:
			Set_Sticks()
		if Global.Apples >= 32:
			Set_Apples()



func Set_Wood():
	Global.Wood = 32

func Set_Sticks():
	Global.Sticks = 32

func Set_Apples():
	Global.Apples = 32
