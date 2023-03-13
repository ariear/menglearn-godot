extends Area2D

signal brain_keambil

export var point = 10

func _ready():
	pass # Replace with function body.

func _bila_masuk(body):
	$AnimationPlayer.play("Taken")
	pass # Replace with function body.

func _die() :
	emit_signal("brain_keambil", point) # cara meng emit signal
	#get_tree().call_group("Scene1", "_on_TambahPoint", point) bisa juga pakai ini , tapi menyebabkan ketergantungan brain nya
	queue_free()
