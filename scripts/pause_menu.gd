extends Node

onready var menu = $menu

func _ready():
	_unpause_game()
	
func _input(event):
	if event.is_action_pressed("escape"):
		if get_tree().paused:
			_unpause_game()
			get_tree().set_input_as_handled()
		else:
			_pause_game()
			get_tree().set_input_as_handled()
			
func _pause_game():
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	menu.show()

func _unpause_game():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	menu.hide()

func _reload():
	yield(self, fader._reload_scene())
	_unpause_game()

func _main_menu():
	menu.hide()
	fader._fade_start("main_menu")

