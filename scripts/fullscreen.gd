extends Node

export var pointerIsCaptured = false

var js_pointerLock = JavaScript.create_callback(self, "_js_pointerLock")

func _js_pointerLock(args):
	var js_event = args[0]
	var console = JavaScript.get_interface("console")
	pointerIsCaptured = !pointerIsCaptured

func _ready():
	if OS.has_feature("JavaScript"):
		var document = JavaScript.get_interface("document")
		document.addEventListener("pointerlockchange", js_pointerLock, false)
		
	OS.min_window_size = Vector2(960, 540)

func _input(event):
	if event.is_action_pressed("fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen
