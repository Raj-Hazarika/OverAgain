extends StaticBody2D

var OPEN = true

func _ready():
	pass


func _on_Area2D_body_entered(body):
	if "Player" in body.name and OPEN and not Globals.music:
		$AnimationPlayer.play("Open")
		MusicSfx.door_open()
		OPEN = false
