extends StaticBody2D

var OPEN = true

func _ready():
	pass


func _on_LevelNumDisplay_AllZeroesClicked():
	if OPEN:
		$AnimationPlayer.play("Open")
		MusicSfx.door_open()
		OPEN = false
