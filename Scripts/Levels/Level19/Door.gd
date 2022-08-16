extends StaticBody2D

var OPEN = true
var OK = false

func _ready():
	pass


func _on_TouchScreenButton_pressed():
	if OPEN and OK:
		$AnimationPlayer.play("Open")
		MusicSfx.door_open()
		OPEN = false
	else:
		get_tree().reload_current_scene()


func _on_LevelNum_LevelOK():
	OK = true


func _on_LevelNum_LevelNotOK():
	OK = false
