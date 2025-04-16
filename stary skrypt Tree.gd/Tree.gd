extends Node2D

func _ready():
	# Podłączanie sygnału dla wszystkich TextureButton
	for tree in get_children():
		if tree is TextureButton:
			tree.connect("pressed", func(): _on_tree_pressed(tree))

func _on_tree_pressed(tree):
	# Odejmowanie 1 od globalnej zmiennej Tree_HP
	Global.Tree_HP -= 1

	# Sprawdzenie, czy HP osiągnęło 0
	if Global.Tree_HP <= 0:
		tree.queue_free()  # Usunięcie drzewa
		Global.Tree_HP = 10  # Resetowanie HP do 10

		# Tworzenie sprite'ów w losowej pozycji względem drzewa
		var wood_sprite = Sprite2D.new()
		wood_sprite.texture = preload("res://Textures/Items/Wood.png")
		wood_sprite.global_position = _generate_random_position_near_tree(tree.global_position, tree)
		wood_sprite.scale = Vector2(1.3, 1.3)  # Powiększenie sprajtu o 32 jednostki (2x standardowy rozmiar)
		add_child(wood_sprite)

		var stick_sprite = Sprite2D.new()
		stick_sprite.texture = preload("res://Textures/Items/Stick.png")
		stick_sprite.global_position = _generate_random_position_near_tree(tree.global_position, tree)
		stick_sprite.scale = Vector2(1.3, 1.3)  # Powiększenie sprajtu o 32 jednostki (2x standardowy rozmiar)
		add_child(stick_sprite)

func _generate_random_position_near_tree(tree_position, tree):
	var offset
	var min_distance = 10  # Minimalna odległość między obiektami
	var max_distance = 30  # Maksymalna odległość od drzewa
	var valid_position = false
	var new_position = tree_position

	# Generowanie losowej pozycji, aż będzie wystarczająco daleko od innych drzew
	while not valid_position:
		offset = Vector2(randf_range(-max_distance, max_distance), randf_range(-max_distance, max_distance))
		new_position = tree_position + offset
		
		# Sprawdzamy, czy nowa pozycja nie koliduje z żadnym innym drzewem
		valid_position = true
		for other_tree in get_children():
			if other_tree is TextureButton and other_tree != tree:  # Tylko inne drzewa
				if new_position.distance_to(other_tree.global_position) < min_distance:
					valid_position = false
					break

	return new_position
