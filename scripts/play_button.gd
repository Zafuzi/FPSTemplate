extends Control

export var start_scene = "test"

func _play_game():
	fader._fade_start(start_scene)
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
