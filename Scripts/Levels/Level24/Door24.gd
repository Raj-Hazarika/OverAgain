extends StaticBody2D

var OPEN = true

func _ready():
	pass


func _on_Area2D_area_entered(area):
	if "KEY" in area.name:
		$AnimationPlayer.play("Open")
		MusicSfx.door_open()
		OPEN = false
