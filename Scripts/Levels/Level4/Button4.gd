extends StaticBody2D

var TRY = 0

signal door_open

func _ready():
	pass


func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		TRY += 1
	if TRY == 3:
		$AnimatedSprite.frame = 1
		emit_signal("door_open")
