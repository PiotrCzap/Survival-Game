extends Node2D

var can_interact = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if can_interact and Input.is_action_just_pressed("Interact"):
		Global.Workbench_GUI_visible = true
		
	
		
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		$"Sprite2D/Interact Label".show()
		can_interact = true
		
		
func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		$"Sprite2D/Interact Label".hide()
		can_interact = false
		Global.Workbench_GUI_visible = false
