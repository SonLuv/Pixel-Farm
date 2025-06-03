extends Node

var game_menu_screen = preload("res://scenes/ui/game_menu_scene.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("game_menu"):
		show_game_menu_screen()

func _start_game() -> void:
	SceneManager.load_main_scene_container()
	SceneManager.load_level("Level1")
	SaveGameManager.load_game()
	SaveGameManager.allow_save_game = true
	
func _exit_game() -> void:
	get_tree().quit()

func show_game_menu_screen() -> void:
	var game_menu_screen_instance = game_menu_screen.instantiate()
	get_tree().root.add_child(game_menu_screen_instance)
