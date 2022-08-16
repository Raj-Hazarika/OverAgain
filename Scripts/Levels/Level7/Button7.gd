extends StaticBody2D


func _ready():
	pass


func _on_Timer_timeout():
	$AnimatedSprite.frame = 1
