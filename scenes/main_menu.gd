extends CanvasLayer

func _ready():
	get_tree().paused = false
	if OS.get_name() == "HTML5":
		$Control/VBoxContainer/quit_button.hide()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
