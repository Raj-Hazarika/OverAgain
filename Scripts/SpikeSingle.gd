extends StaticBody2D


func _ready():
	pass

func _on_Area2D_area_entered(area):
	if "Hurtbox" in area.name:
		MusicSfx.death()
		get_tree().reload_current_scene()
