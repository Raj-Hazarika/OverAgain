extends StaticBody2D

signal player_dead

func _ready():
	pass

func _on_Area2D_area_entered(area):
	if "Hurtbox" in area.name:
		emit_signal("player_dead")
