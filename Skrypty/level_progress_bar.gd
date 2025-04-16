extends TextureProgressBar

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Level.text = str(Global.Player_Level)
	
	if Global.Player_Level == 0:
		max_value = 10
	if value == 10:
		Global.Player_Level = 1
		
	if Global.Player_Level == 1:
		max_value = 20
	if value == 20:
		Global.Player_Level = 2
		
	if Global.Player_Level == 2:
		max_value = 30
	if value == 30:
		Global.Player_Level = 3
		
	if Global.Player_Level == 3:
		max_value = 40
	if value == 40:
		Global.Player_Level = 4
		
	if Global.Player_Level == 4:
		max_value = 50
	if value == 50:
		Global.Player_Level = 5
		
	if Global.Player_Level == 5:
		max_value = 60
	if value == 60:
		Global.Player_Level = 6
		
	if Global.Player_Level == 6:
		max_value = 70
	if value == 70:
		Global.Player_Level = 7
		
	if Global.Player_Level == 7:
		max_value = 80
	if value == 80:
		Global.Player_Level = 8
		
	if Global.Player_Level == 8:
		max_value = 90
	if value == 90:
		Global.Player_Level = 9
		
	if Global.Player_Level == 9:
		max_value = 100
	if value == 100:
		Global.Player_Level = 10
