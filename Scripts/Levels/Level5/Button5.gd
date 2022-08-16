extends StaticBody2D

signal door_close

func _ready():
	$AnimatedSprite.frame = 1


func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		$AnimatedSprite.frame = 0
		emit_signal("door_close")
