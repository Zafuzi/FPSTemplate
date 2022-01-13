extends CanvasLayer

var path = "test"

var duration = 0.5
var rect
var tween
var timer

func _ready():
	rect = $rect
	tween = $tween
	timer = $timer
	timer.wait_time = duration

func _fade_start(var scene_path):
	path = "res://scenes/" + scene_path + ".tscn"
	var file = File.new()
	if file.file_exists(path):
		_fade_out()
		timer.start()
	else:
		_reload_scene()

func _fade_in():
	tween.interpolate_property(rect, "color",
	rect.color, Color(0.0, 0.0, 0.0, 0.0), duration,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()

func _fade_out():
	tween.interpolate_property(rect, "color",
	rect.color, Color(0.0, 0.0, 0.0, 1.0), duration,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()

func _reload_scene():
	var current_scene = get_tree().get_current_scene().get_name()
	path = "res://scenes/" + current_scene + ".tscn"
	_fade_out()
	timer.start()

func _change_scene():
	get_tree().change_scene(path)
	_fade_in()
