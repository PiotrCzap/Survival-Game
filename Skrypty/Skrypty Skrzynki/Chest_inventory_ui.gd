extends Node2D
@onready var coin_quantity: Label = $"Materials Menu/Items/Coin Item/Coin Quantity"
@onready var stick_quantity: Label = $"Materials Menu/Items/Stick Item/Stick Quantity"
@onready var wood_quantity: Label = $"Materials Menu/Items/Wood Item/Wood Quantity"
@onready var stone_quantity: Label = $"Materials Menu/Items/Stone Item/Stone Quantity"
@onready var planks_quantity: Label = $"Materials Menu/Items/Planks Item/Planks Quantity"

func _process(delta: float) -> void:
	coin_quantity.text = str(Global.Coins)
	stick_quantity.text = str(Global.Sticks)
	wood_quantity.text = str(Global.Wood)
	stone_quantity.text = str(Global.Stone)
	planks_quantity.text = str(Global.Planks)
