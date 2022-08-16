extends Node2D

var file_path = "user://save_game.dat"

func _ready():
	pass

func save(content):
	var file = File.new()
	var error = file.open(file_path, File.WRITE)
	if error == OK:
		file.store_var(content)
		file.close()

func loadgame():
	var file = File.new()
	if file.file_exists(file_path):
		var error = file.open(file_path, File.READ)
		if error == OK:
			var content = file.get_var()
			file.close()
			return content

