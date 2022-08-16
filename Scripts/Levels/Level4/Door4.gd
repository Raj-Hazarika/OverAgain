extends StaticBody2D

func _ready():
	pass


func _on_Button_door_open():
	$AnimationPlayer.play("Open")
	MusicSfx.door_open()
