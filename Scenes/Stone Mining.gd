extends TileMapLayer

@onready var tile_map: TileMapLayer = $"."
const MAX_CLICKS = 20

var click_counts = {}  # słownik: Vector2i -> liczba kliknięć

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT and Global.Wooden_Pickaxe_Equipped:
		handle_tile_click()

func handle_tile_click():
	var mouse_pos = tile_map.get_local_mouse_position()
	var clicked_cell = tile_map.local_to_map(mouse_pos)

	# Pobierz aktualną liczbę kliknięć (domyślnie 0)
	var current_clicks = click_counts.get(clicked_cell, 0)
	current_clicks += 1

	# Zapisz nową wartość
	click_counts[clicked_cell] = current_clicks

	# Usuń tile jeśli osiągnął limit
	if current_clicks >= MAX_CLICKS:
		tile_map.erase_cell(clicked_cell)
		Global.Stone += 4
		click_counts.erase(clicked_cell)  # opcjonalnie, nie śledź już tej komórki
