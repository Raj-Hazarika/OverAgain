extends StaticBody2D


func _ready():
	pass


func _on_Area2D_body_entered(body):
	if "Player" in body.name and not Globals.music:
		$AnimatedSprite.frame = 1
