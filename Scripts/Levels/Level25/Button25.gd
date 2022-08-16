extends StaticBody2D


func _ready():
	pass


func _on_Area2D_body_entered(body):
	if "Football" in body.name:
		$AnimatedSprite.frame = 1
