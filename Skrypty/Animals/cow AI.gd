extends CharacterBody2D
class_name Cow

@export var move_distance: float = 30.0  # Maksymalna odległość ruchu
@export var move_interval: float = 3.0   # Czas między ruchami
@export var move_duration: float = 1.0   # Czas trwania pojedynczego ruchu

var rng = RandomNumberGenerator.new()
var target_position: Vector2
var moving: bool = false
var move_timer: float = 0.0

func _ready():
	rng.randomize()
	start_timer()

func start_timer():
	move_timer = move_interval

func _process(delta):
	# Odliczanie do rozpoczęcia ruchu
	if !moving:
		move_timer -= delta
		if move_timer <= 0:
			start_moving()

func start_moving():
	var random_offset = Vector2(rng.randi_range(-move_distance, move_distance), rng.randi_range(-move_distance, move_distance))
	target_position = position + random_offset
	moving = true

func _physics_process(delta):
	if moving:
		var direction = (target_position - position).normalized()
		velocity = direction * (move_distance / move_duration)
		move_and_slide()

		# Sprawdzenie, czy dotarliśmy do celu
		if position.distance_to(target_position) < 2.0:
			moving = false
			velocity = Vector2.ZERO
			start_timer()
