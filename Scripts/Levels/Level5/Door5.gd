extends StaticBody2D

var CLOSE = true

func _ready():
	$AnimationPlayer.play("Open")
	MusicSfx.door_open()


func _on_Button_door_close():
	if CLOSE:
		$AnimationPlayer.play_backwards("Open")
		CLOSE = false
