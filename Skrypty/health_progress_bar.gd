extends TextureProgressBar


func _process(delta: float) -> void:
	$Health.text = str(Global.Player_Health)
	value = Global.Player_Health
