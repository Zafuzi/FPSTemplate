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
			
func _process(_delta):
	if OS.get_name() == "HTML5":
		if !fullscreen.pointerIsCaptured and !get_tree().paused and !menu.visible:
			menu.show()
			
		if fullscreen.pointerIsCaptured and !get_tree().paused and menu.visible:
			menu.hide()
			
func _pause_game():
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	menu.show()

func _unpause_game():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	menu.hide()

func _reload():
	_unpause_game()
	fader._reload_scene()

func _main_menu():
	_unpause_game()
	fader._fade_start("main_menu")
