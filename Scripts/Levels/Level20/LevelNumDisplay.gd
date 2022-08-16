extends CanvasLayer

var ZeroNum = 0

signal AllZeroesClicked

func _ready():
	pass
	
func _process(delta):
	if ZeroNum == 6:
		emit_signal("AllZeroesClicked")

func _on_Small1_pressed():
	ZeroNum += 1
	$Zeroes1.queue_free()

func _on_Small2_pressed():
	ZeroNum += 1
	$Zeroes2.queue_free()

func _on_Big1_pressed():
	ZeroNum += 1
	$ZeroesBig.queue_free()

func _on_Big2_pressed():
	ZeroNum += 1
	$ZeroesBig2.queue_free()

func _on_Big3_pressed():
	ZeroNum += 1
	$ZeroesBig3.queue_free()

func _on_Big4_pressed():
	ZeroNum += 1
	$ZeroesBig4.queue_free()
