extends Control

export var start_scene = "test"

func _play_game():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	fader._fade_start(start_scene)

