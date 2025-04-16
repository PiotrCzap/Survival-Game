extends Node2D

func _process(delta: float) -> void:
	if Global.Wooden_Axe_Equipped == true:
		$"NinePatchRect/Tool Equip Slot/Wooden Axe".show()
	else:
		$"NinePatchRect/Tool Equip Slot/Wooden Axe".hide()
		
	if Global.Stone_Axe_Equipped == true:
		$"NinePatchRect/Tool Equip Slot/Stone Axe".show()
	else:
		$"NinePatchRect/Tool Equip Slot/Stone Axe".hide()
		
	if Global.Wooden_Pickaxe_Equipped == true:
		$"NinePatchRect/Tool Equip Slot/Wooden Pickaxe".show()
	else:
		$"NinePatchRect/Tool Equip Slot/Wooden Pickaxe".hide()
