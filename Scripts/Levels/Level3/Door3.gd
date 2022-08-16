extends StaticBody2D

var OPEN = true

func _ready():
	pass


func _on_TouchScreenButton_pressed():
	if OPEN:
		$AnimationPlayer.play("Open")
		MusicSfx.door_open()
		OPEN = false
