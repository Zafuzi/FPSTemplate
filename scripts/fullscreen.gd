extends Node

func _ready():
	OS.min_window_size = Vector2(960, 540)

func _process(delta):
	if Input.is_action_pressed("fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen
