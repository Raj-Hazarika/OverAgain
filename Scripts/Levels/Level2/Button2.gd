extends StaticBody2D


func _ready():
	pass


func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		$Timer.start()


func _on_Area2D_body_exited(body):
	$Timer.stop()


func _on_Timer_timeout():
	$AnimatedSprite.frame = 1
