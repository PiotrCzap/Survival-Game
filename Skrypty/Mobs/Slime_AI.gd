extends CharacterBody2D

@export var speed: float = 20.0
@onready var player_detection_area = $Slime/Area2D
var player: Player = null

func _ready():
	player_detection_area.connect("body_entered", _on_body_entered)
	player_detection_area.connect("body_exited", _on_body_exited)

func _process(delta):
	$Slime.play()
	if player:
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * speed
		move_and_slide()
		

func _on_body_entered(body):
	if body is Player:
		player = body

func _on_body_exited(body):
	if body == player:
		player = null
		velocity = Vector2.ZERO
