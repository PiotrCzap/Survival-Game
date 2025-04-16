extends CharacterBody2D

class_name Player
# Prędkość poruszania się


@export var speed: float = 200
@onready var Walking_Animation = $"Player Sprite"
var is_walking = false
@onready var Hunger_Timer = $"Food Progress Bar/Timer"
# Funkcja przetwarzania logiki gry
func _process(delta: float) -> void:
	

	$"Health Progress Bar".value = Global.Player_Health
	
	
	
	if Input.is_action_just_pressed("Key A"):
		Walking_Animation.play("Player Walking Animation")
		is_walking = true
	elif Input.is_action_just_pressed("Key D"):
		Walking_Animation.play("Player Walking Animation")
		is_walking = true
	elif Input.is_action_pressed("Key S"):
		Walking_Animation.play("Player Walking Animation")
		is_walking = true
	elif Input.is_action_pressed("Key W"):
		Walking_Animation.play("Player Walking Animation")
		is_walking = true
	else:
		Walking_Animation.play("Player Standing Animation")
		is_walking = false
	# Kierunek ruchu
	var input_direction = Vector2.ZERO
	
	if Global.Player_in_Cave:
		position = Vector2(-30006.707, 0)
		Global.Player_in_Cave = false
		
	# Wykrywanie wejścia
	if Input.is_action_pressed("Key D"):
		$"Player Sprite".flip_h = true
		input_direction.x += 1
	if Input.is_action_pressed("Key A"):
		$"Player Sprite".flip_h = false
		input_direction.x -= 1
	if Input.is_action_pressed("Key S"):
		input_direction.y += 1
	if Input.is_action_pressed("Key W"):
		input_direction.y -= 1

	# Normalizacja kierunku, aby prędkość była stała
	if input_direction != Vector2.ZERO:
		input_direction = input_direction.normalized()

	# Ustawianie prędkości i przemieszczanie gracza
	velocity = input_direction * speed
	move_and_slide()


func _on_timer_timeout() -> void:
	if is_walking == true:
		Global.Player_Hunger -= randi_range(1 , 5)
	if is_walking == false:
		Global.Player_Hunger -= randi_range(1 , 2)
