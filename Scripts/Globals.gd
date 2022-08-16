extends Node2D

var level = int()
var unlocklevels = 1
var music = true

var info = {
	"unlocklevels" : 1
}

var LevelName = ["1. Simple",
"2. Stay a bit",
"3. Press it",
"4. Try Try Try",
"5. Don't try even once",
"6. Give up this time",
"7. Be a bit more patient",
"8. Weird controls",
"9. If nothing goes right, go left",
"10. Create it yourself",
"11. If gravity didn't exist",
"12. No reason to live",
"13. Lucky 13!",
"14. Don't believe what you see",
"15. Think outside the box",
"16. Telekinesis",
"17. Have you played Flappy Bird",
"18. Keep quiet",
"19. Which level? Then press",
"",
"21. Be fast",
"22. Use wisely",
"23. It's not the only way to control",
"24. The button? Find the key...",
"25. Score!",
"26. (Last level) My name is... What?"
]

func _ready():
	pass

func level_unlock(num):
	if int(unlocklevels) < 26 and num >= int(unlocklevels):
		unlocklevels = num
		return true
	return false

func change_level():
	level += 1
	if level == 26:
		Scenechange.change_scene("res://Scenes/EndMenu.tscn")
	else:
		Scenechange.change_scene("res://Scenes/Level" + str(level) + ".tscn")
	
